struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<bool>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
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

var<private> global0: Struct_1 = Struct_1(0i, 76865u, vec3<bool>(false, true, false), -536f, vec2<u32>(1u, 57021u));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = Struct_1(-1i, _wgslsmith_sub_u32(max(~firstLeadingBit(arg_0), 14461u), _wgslsmith_clamp_u32(~0u, arg_0, _wgslsmith_div_u32(~63078u, u_input.b.x))), select(vec3<bool>(!global0.c.x && true, global0.c.x, global0.c.x), vec3<bool>(all(!vec4<bool>(true, global0.c.x, global0.c.x, false)), global0.c.x, !global0.c.x | (global0.c.x && false)), select(vec3<bool>(false, true, true), vec3<bool>(global0.c.x, true, all(global0.c.yx)), global0.b <= 1u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.d + 451f))), global0.e);
    let var_1 = vec2<u32>(arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, firstTrailingBit(0u), ~arg_0, var_0.e.x), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(0u, 22630u, var_0.b, arg_0)), _wgslsmith_sub_vec4_u32(min(vec4<u32>(0u, 4494u, 71897u, 23652u), vec4<u32>(41216u, arg_0, global0.b, 42955u)), vec4<u32>(global0.e.x, arg_0, u_input.b.x, 4294967295u)))));
    global0 = var_0;
    global0 = var_0;
    var var_2 = reverseBits(vec4<u32>(global0.e.x, var_0.b, global0.e.x, (~global0.e.x >> (var_1.x % 32u)) << (~(~arg_0) % 32u)));
    return all(select(vec2<bool>(-1i != u_input.a, !global0.c.x), var_0.c.xz, select(select(vec2<bool>(var_0.c.x, global0.c.x), vec2<bool>(false, false), global0.c.x), select(global0.c.yy, var_0.c.zx, true), false))) != (!any(select(var_0.c.xz, vec2<bool>(var_0.c.x, var_0.c.x), vec2<bool>(global0.c.x, global0.c.x))) || global0.c.x);
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_1 {
    global0 = Struct_1(global0.a, 0u, vec3<bool>(func_3(firstLeadingBit(4294967295u)) | all(!vec4<bool>(arg_1, global0.c.x, arg_1, true)), true, (select(arg_1, arg_1, arg_1) && (4294967295u >= u_input.b.x)) | true), global0.d, _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(min(select(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b, vec2<bool>(arg_1, true)), vec2<u32>(u_input.b.x, 22004u)), vec2<u32>(abs(u_input.b.x), 543u)), abs(reverseBits(vec2<u32>(0u, 1u)))));
    var var_0 = Struct_3(select(_wgslsmith_mult_vec3_u32(~reverseBits(vec3<u32>(4294967295u, 27887u, u_input.b.x)), select(~vec3<u32>(1u, global0.e.x, global0.b), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 59255u, u_input.b.x), vec3<u32>(1u, 4694u, 41770u)), global0.a <= u_input.a)), _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(0u, u_input.b.x, global0.e.x)), _wgslsmith_add_vec3_u32(~vec3<u32>(20606u, 4294967295u, 4294967295u), vec3<u32>(global0.b, u_input.b.x, u_input.b.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, global0.e.x) << (vec3<u32>(18010u, 50648u, 51836u) % vec3<u32>(32u)), ~vec3<u32>(global0.e.x, global0.e.x, u_input.b.x))), select(!vec3<bool>(false, global0.c.x, false), global0.c, select(vec3<bool>(global0.c.x, global0.c.x, arg_1), global0.c, global0.c.x))), -40164i);
    var_0 = Struct_3(~vec3<u32>(var_0.a.x, 1u, _wgslsmith_add_u32(global0.b << (var_0.a.x % 32u), _wgslsmith_sub_u32(global0.b, var_0.a.x))), _wgslsmith_add_i32(abs(var_0.b), -34112i));
    let var_1 = -12026i;
    var var_2 = _wgslsmith_f_op_f32(global0.d * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.d))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1536f, arg_0)))));
    return Struct_1(2147483647i, 79000u, global0.c, _wgslsmith_div_f32(global0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.d))), arg_0)), select(select(var_0.a.xx, vec2<u32>(86093u, var_0.a.x), vec2<bool>(global0.c.x, true)) << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)), select(~var_0.a.xz >> (vec2<u32>(4294967295u, global0.b) % vec2<u32>(32u)), var_0.a.yx, select(global0.c.xy, select(global0.c.yy, global0.c.xz, global0.c.x), global0.c.zz)), global0.c.xy));
}

fn func_1() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-804f, global0.d)))))))));
    var var_1 = 1u;
    var var_2 = Struct_1(-_wgslsmith_mod_i32(global0.a, abs(_wgslsmith_sub_i32(-23081i, -2147483647i))), 28123u, global0.c, global0.d, u_input.b);
    var var_3 = var_2.a;
    global0 = func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-596f)) - _wgslsmith_div_f32(1452f, -578f)))))), false);
    return _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)), global0.d), var_0, !global0.c.zz));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: u32) -> Struct_2 {
    var var_0 = min(1i, u_input.a);
    var_0 = 1i;
    var var_1 = select(~(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.e.x, u_input.b.x, arg_3), vec3<u32>(arg_0.x, 3325u, global0.b)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), min(~vec3<u32>(arg_3, 0u, 0u), ~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.b.x), vec3<u32>(global0.e.x, global0.b, arg_0.x))), select(global0.c, global0.c, global0.c)) ^ ~vec3<u32>(1u, global0.e.x, global0.b);
    var_0 = 1i & _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, -2147483647i), -abs(-vec3<i32>(1i, u_input.a, -1i)));
    let var_2 = Struct_3(~vec3<u32>(global0.b, ~(52646u >> (arg_0.x % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, arg_3, 77523u), vec4<u32>(0u, arg_3, var_1.x, 105935u))), ~_wgslsmith_mult_i32(-1i, global0.a));
    return Struct_2(~max(~(~vec3<u32>(var_1.x, 1u, 1u)), ~vec3<u32>(var_1.x, arg_0.x, 31862u) | var_2.a), vec2<u32>(_wgslsmith_mod_u32(countOneBits(_wgslsmith_mult_u32(4294967295u, arg_0.x)), arg_3), ~(~31398u) ^ _wgslsmith_mult_u32(_wgslsmith_div_u32(arg_3, var_1.x), 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_mod_vec2_u32(abs(~(vec2<u32>(31336u, global0.e.x) ^ vec2<u32>(1u, u_input.b.x))), u_input.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d, _wgslsmith_f_op_f32(trunc(-1201f))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-355f, global0.d) - _wgslsmith_f_op_vec2_f32(func_1()))))), func_2(_wgslsmith_f_op_f32(sign(228f)), _wgslsmith_dot_vec3_u32(min(vec3<u32>(global0.b, 75713u, global0.b), vec3<u32>(global0.b, 0u, 0u)), select(vec3<u32>(global0.e.x, 1u, u_input.b.x), vec3<u32>(54985u, 1u, global0.b), false)) >= (~u_input.b.x & ~global0.e.x)).c.yz, firstTrailingBit(max(global0.e.x, ~_wgslsmith_mod_u32(global0.b, 77489u))));
    global0 = func_2(_wgslsmith_f_op_f32(global0.d + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1607f + 1000f) * _wgslsmith_f_op_f32(sign(-1630f)))))), any(global0.c.yz));
    global0 = func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d - 107f) * global0.d))), global0.c.x);
    let var_1 = ~(max(vec4<u32>(var_0.b.x, ~4294967295u, _wgslsmith_mult_u32(var_0.a.x, 60845u), u_input.b.x), _wgslsmith_add_vec4_u32(~vec4<u32>(14534u, 4294967295u, global0.b, global0.b), abs(vec4<u32>(global0.e.x, 1u, u_input.b.x, 20897u)))) | (_wgslsmith_sub_vec4_u32(min(vec4<u32>(var_0.a.x, global0.e.x, 43591u, 0u), vec4<u32>(37544u, global0.e.x, u_input.b.x, var_0.b.x)), _wgslsmith_add_vec4_u32(vec4<u32>(global0.e.x, 22102u, u_input.b.x, var_0.a.x), vec4<u32>(global0.e.x, u_input.b.x, 1u, global0.e.x))) | _wgslsmith_mod_vec4_u32(vec4<u32>(0u, global0.e.x, var_0.a.x, var_0.b.x) << (vec4<u32>(global0.b, u_input.b.x, 0u, global0.e.x) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 1u, 53560u, 73807u), vec4<u32>(29171u, 0u, var_0.a.x, 1u)))));
    var var_2 = var_0;
    var_2 = var_0;
    global0 = func_2(1609f, !any(select(select(vec4<bool>(global0.c.x, true, false, global0.c.x), vec4<bool>(true, false, global0.c.x, false), vec4<bool>(false, true, global0.c.x, global0.c.x)), !vec4<bool>(global0.c.x, true, global0.c.x, false), !vec4<bool>(global0.c.x, global0.c.x, true, global0.c.x))));
    global0 = Struct_1(u_input.a, ~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(48568u, var_2.b.x, 4294967295u, var_2.b.x)), _wgslsmith_div_vec4_u32(var_1, _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.x, 1u, 4294967295u, var_2.a.x), vec4<u32>(1u, 4294967295u, u_input.b.x, 1u)))), vec3<bool>(all(global0.c), true, false), 643f, countOneBits(u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d, 904f, global0.d, -1000f) - vec4<f32>(-763f, -1000f, global0.d, 296f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(155f, global0.d, global0.d, -1149f) * vec4<f32>(global0.d, 268f, 1451f, global0.d)), 870u < global0.e.x)) * vec4<f32>(_wgslsmith_f_op_f32(-905f + global0.d), _wgslsmith_f_op_f32(global0.d + global0.d), _wgslsmith_f_op_f32(-global0.d), _wgslsmith_div_f32(global0.d, -633f)))));
}

