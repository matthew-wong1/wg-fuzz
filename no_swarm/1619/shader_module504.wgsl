struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 1>;

var<private> global1: vec4<u32> = vec4<u32>(12493u, 3224u, 11013u, 4294967295u);

var<private> global2: vec4<f32> = vec4<f32>(1643f, 151f, 1000f, 1760f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: vec2<f32>, arg_3: i32) -> u32 {
    var var_0 = Struct_3(vec2<bool>(true, true), abs(select(firstLeadingBit(_wgslsmith_mult_u32(0u, 4294967295u)), 4294967295u >> ((1u ^ arg_0.b) % 32u), true)), arg_0.e.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(581f, arg_0.d.x, true)), -462f, _wgslsmith_f_op_f32(max(-1463f, arg_1)))), arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)) <= arg_0.d.x)), Struct_2(Struct_1(select(true & arg_0.c.b, any(vec2<bool>(arg_0.a.x, false)), true), false), Struct_1(arg_0.a.x, all(arg_0.a)), true, Struct_1(select(arg_3 > 1i, arg_0.a.x, true), true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(1000f * -127f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_vec2_f32(var_0.d.yy, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-649f)) + _wgslsmith_div_f32(arg_2.x, -670f)), global2.x))));
    var_0 = arg_0;
    var_0 = arg_0;
    global1 = ~(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(global1.x, 4294967295u, arg_0.b, 4294967295u)), vec4<u32>(0u, arg_0.b, global1.x, 52412u)) & ~(vec4<u32>(1u, 8182u, global1.x, arg_0.b) << (vec4<u32>(arg_0.b, 0u, 34259u, 1u) % vec4<u32>(32u)))) | (~vec4<u32>(~global1.x, ~arg_0.b, min(arg_0.b, var_0.b), abs(arg_0.b)) ^ ~vec4<u32>(global1.x, global1.x, abs(arg_0.b), 16515u));
    return ~var_0.b;
}

fn func_4(arg_0: bool, arg_1: u32) -> u32 {
    global0 = array<vec3<f32>, 1>();
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.zx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(985f, 547f)) - vec2<f32>(-1000f, -221f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.wz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.yw) + global2.yx))));
    let var_1 = _wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global1.x, 589u, arg_1, 61145u) & vec4<u32>(89435u, 4294967295u, 8203u, 1u), ~vec4<u32>(arg_1, arg_1, global1.x, global1.x)), _wgslsmith_add_vec4_u32(vec4<u32>(global1.x, 0u, arg_1, 51260u) & vec4<u32>(arg_1, global1.x, arg_1, 52880u), vec4<u32>(arg_1, global1.x, arg_1, 1u))), vec4<u32>(~arg_1, arg_1, global1.x >> (~1u % 32u), global1.x));
    let var_2 = var_1;
    var var_3 = ~vec3<i32>(max(abs(u_input.c), u_input.a.x), 2147483647i, -46367i);
    return reverseBits(_wgslsmith_mod_u32(max(18801u, global1.x), ~global1.x << (arg_1 % 32u)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> u32 {
    let var_0 = 142f;
    global2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(var_0 - var_0), _wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(-422f + var_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, var_0, global2.x, global2.x))) - _wgslsmith_div_vec4_f32(vec4<f32>(-731f, var_0, -451f, var_0), vec4<f32>(var_0, 714f, global2.x, 988f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0, var_0, var_0, 338f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-391f, global2.x, var_0, 573f) - vec4<f32>(global2.x, 133f, var_0, var_0))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0), global2.x, _wgslsmith_f_op_f32(round(var_0)), _wgslsmith_f_op_f32(min(global2.x, var_0))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-748f, global2.x, 2453f, -841f))))));
    global1 = _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(global1.x, 4294967295u)), ~0u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1.x, 24967u, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(31922u, global1.x, global1.x, global1.x), vec4<u32>(4294967295u, 1u, global1.x, 1u))), ~global1.x), vec4<u32>(func_4(arg_1.b && true, func_3(Struct_3(vec2<bool>(arg_1.a, false), global1.x, Struct_1(false, true), global2.wwx, Struct_2(Struct_1(true, arg_1.b), Struct_1(arg_1.a, arg_1.a), false, arg_1)), var_0, vec2<f32>(1020f, global2.x), u_input.a.x)), abs(~global1.x), global1.x, global1.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec2_u32(global1.xz, vec2<u32>(43256u, global1.x)), _wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(global1.x, global1.x, global1.x)), ~_wgslsmith_mult_u32(15300u, 0u), 1u >> (_wgslsmith_dot_vec3_u32(global1.xyw, vec3<u32>(0u, 21904u, global1.x)) % 32u)), vec4<u32>(global1.x, global1.x, ~global1.x, ~(~global1.x)), ~vec4<u32>(~global1.x, _wgslsmith_mod_u32(global1.x, 0u), _wgslsmith_div_u32(global1.x, global1.x), global1.x | 4294967295u)));
    let var_1 = abs(global1.x);
    global1 = abs(~(~min(vec4<u32>(global1.x, 1u, 4294967295u, 1u), vec4<u32>(global1.x, var_1, var_1, 0u)))) << (reverseBits(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(59959u, 1u, 0u, 4294967295u), vec4<u32>(4294967295u, var_1, 28197u, 4294967295u)))) % vec4<u32>(32u));
    return 13565u;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<u32>) -> u32 {
    global0 = array<vec3<f32>, 1>();
    global1 = ~vec4<u32>(4294967295u, ~global1.x, func_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, u_input.a.x) ^ arg_1, _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, u_input.b, u_input.a.x), u_input.a, u_input.a), vec3<i32>(-1i, u_input.c, 1i)), Struct_1(false, true)), 0u);
    global2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.x, -1248f, global2.x, global2.x))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(238f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * -311f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))), global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + 647f) + -1195f)), select(!vec4<bool>(true, !arg_0.b, arg_0.b | arg_0.b, arg_0.a), select(!select(vec4<bool>(arg_0.b, arg_0.b, false, arg_0.b), vec4<bool>(true, true, false, true), false), !vec4<bool>(arg_0.b, true, false, arg_0.a), true == select(false, arg_0.b, false)), select(vec4<bool>(arg_0.a, false, false, arg_0.a | arg_0.a), !select(vec4<bool>(false, arg_0.a, false, arg_0.a), vec4<bool>(arg_0.b, false, true, true), arg_0.b), arg_0.b))));
    var var_0 = Struct_2(arg_0, arg_0, true, arg_0);
    var var_1 = var_0.d;
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~_wgslsmith_div_vec4_u32(vec4<u32>(firstTrailingBit(func_1(Struct_1(false, false), u_input.a, global1.zxw)), 1u, ~global1.x, ~_wgslsmith_sub_u32(51326u, 1u)), ~vec4<u32>(max(global1.x, 0u), 17087u, ~25518u, _wgslsmith_add_u32(global1.x, global1.x)));
    let var_0 = global1.x ^ 35618u;
    let var_1 = -511f;
    var var_2 = Struct_1(false, !any(vec4<bool>(all(vec2<bool>(false, true)), all(vec4<bool>(true, false, false, false)), any(vec3<bool>(false, false, true)), select(false, false, false))));
    let var_3 = var_2.b;
    global1 = vec4<u32>(max(var_0 << (global1.x % 32u), ~(~(56141u << (global1.x % 32u)))), reverseBits(0u), ~4294967295u, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.x, -586f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1104f)))), _wgslsmith_f_op_f32(-262f + _wgslsmith_f_op_f32(-global2.x))))));
}

