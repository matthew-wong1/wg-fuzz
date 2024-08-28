struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: u32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
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

var<private> global0: u32 = 8766u;

var<private> global1: vec2<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> u32 {
    let var_0 = ~30959u;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1264f + -508f) + 1000f) + -1000f)), true, any(vec2<bool>(false, any(vec2<bool>(false, false)) || (arg_1.b & arg_1.c))), select(~vec3<u32>(global1.x, var_0, arg_1.d.x) | _wgslsmith_sub_vec3_u32(arg_2.d, vec3<u32>(40380u, 12101u, 0u)), arg_1.d & _wgslsmith_mod_vec3_u32(arg_1.d, reverseBits(vec3<u32>(52809u, arg_2.d.x, u_input.a))), arg_3.xyx));
    global0 = 19177u;
    let var_2 = arg_2.d.x;
    global1 = arg_2.d.zx;
    return _wgslsmith_dot_vec3_u32(var_1.d, ~arg_1.d);
}

fn func_2() -> vec3<u32> {
    global1 = vec2<u32>(~48491u, global1.x | func_3(true, Struct_1(_wgslsmith_f_op_f32(max(-873f, 843f)), true, true, vec3<u32>(21513u, global1.x, 3538u) & vec3<u32>(1u, 35600u, global1.x)), Struct_1(_wgslsmith_f_op_f32(951f - -386f), true, true, vec3<u32>(u_input.a, u_input.a, 4294967295u)), vec4<bool>(true, 0u >= global1.x, true, true)));
    let var_0 = vec2<u32>(u_input.a, _wgslsmith_sub_u32(4294967295u, abs(u_input.a)));
    var var_1 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(false, false)) | true, all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)), true & any(vec4<bool>(false, false, false, true)), false), all(vec3<bool>(true, true, true)) & true), select(!select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), true), false), vec4<bool>(all(vec3<bool>(true, true, true)), !any(vec2<bool>(true, false)), true, true | (7115u < u_input.a)), any(vec2<bool>(true, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(14605u != u_input.a, all(vec2<bool>(false, true)), true, true)), true));
    var var_2 = -(~vec4<i32>(-firstTrailingBit(1i), abs(_wgslsmith_div_i32(u_input.b.x, 8320i)), _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b.x, 0i), max(2147483647i, -13627i)), _wgslsmith_dot_vec4_i32(vec4<i32>(27156i, -848i, 2147483647i, u_input.b.x), firstTrailingBit(vec4<i32>(-5676i, 1i, u_input.b.x, u_input.b.x)))));
    global1 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(40663u, u_input.a, global1.x), vec3<u32>(14836u, 27815u, 0u) | vec3<u32>(0u, var_0.x, 4294967295u)), 96668u), vec3<u32>(12171u, 1u, (global1.x ^ var_0.x) & ~1u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 67411u) ^ vec2<u32>(62149u, u_input.a), var_0), ~global1.x));
    return vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(var_0, var_0), vec2<u32>(var_0.x, _wgslsmith_sub_u32(1u, var_0.x))), ~1u, 0u);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    let var_0 = 0i ^ arg_0;
    global0 = ~_wgslsmith_mod_u32(~1u, _wgslsmith_div_u32(0u, ~global1.x));
    var var_1 = false;
    global1 = arg_1.d.zx;
    return arg_2;
}

fn func_1(arg_0: Struct_1) -> u32 {
    global1 = abs(vec2<u32>(~max(u_input.a | 4294967295u, ~arg_0.d.x), global1.x));
    let var_0 = func_4(_wgslsmith_add_i32(~max(u_input.b.x, _wgslsmith_sub_i32(18056i, u_input.b.x)), -2147483647i), arg_0, Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - -320f)), _wgslsmith_f_op_f32(ceil(arg_0.a)))), true, arg_0.b, _wgslsmith_mult_vec3_u32(func_2(), vec3<u32>(~4294967295u, arg_0.d.x, _wgslsmith_clamp_u32(global1.x, u_input.a, 95506u)))), Struct_2(vec2<i32>(_wgslsmith_add_i32(~u_input.b.x, u_input.b.x), (u_input.b.x ^ 0i) >> (~arg_0.d.x % 32u)), select(!vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(arg_0.a < arg_0.a, true), arg_0.c), 4294967295u, _wgslsmith_sub_vec2_u32(abs(arg_0.d.xz << (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u))), vec2<u32>(~0u, select(u_input.a, u_input.a, arg_0.b)))));
    global0 = arg_0.d.x;
    let var_1 = any(vec2<bool>(!(!(var_0.a <= -1724f)), true));
    global0 = 4294967295u;
    return _wgslsmith_div_u32(~select(arg_0.d.x >> (arg_0.d.x % 32u), var_0.d.x, arg_0.c), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1.x;
    global0 = (0u ^ func_1(Struct_1(_wgslsmith_div_f32(-579f, -310f), all(vec3<bool>(false, false, true)), false, _wgslsmith_div_vec3_u32(vec3<u32>(31143u, 1384u, 0u), vec3<u32>(3113u, 15099u, 4294967295u))))) << (global1.x % 32u);
    global1 = vec2<u32>(func_4(u_input.b.x, func_4(1i, Struct_1(127f, true, false, vec3<u32>(global1.x, 0u, 4294967295u)), Struct_1(422f, true, true, vec3<u32>(global1.x, u_input.a, global1.x)), Struct_2(u_input.b, vec2<bool>(true, true), u_input.a, vec2<u32>(u_input.a, u_input.a))), func_4(1i, Struct_1(354f, true, true, vec3<u32>(0u, 4294967295u, 0u)), Struct_1(297f, false, false, vec3<u32>(global1.x, 11595u, 35702u)), Struct_2(u_input.b, vec2<bool>(true, false), u_input.a, vec2<u32>(88839u, global1.x))), Struct_2(vec2<i32>(u_input.b.x, u_input.b.x), vec2<bool>(true, false), 4294967295u, vec2<u32>(82835u, u_input.a))).d.x << (countOneBits(1u) % 32u), u_input.a) | ~reverseBits(vec2<u32>(1u, ~1u));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-317f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -118f))))), any(vec3<bool>(false, all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false))), u_input.b.x < 29064i)), false, func_2());
    let var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(firstLeadingBit(max(u_input.b.x, u_input.b.x) << (~var_0.d.x % 32u)), u_input.b.x), ~(~u_input.b), u_input.b);
    var var_2 = Struct_2(select(~(vec2<i32>(-37820i, 0i) << (vec2<u32>(41456u, global1.x) % vec2<u32>(32u))) | _wgslsmith_sub_vec2_i32(var_1, ~vec2<i32>(var_1.x, 18447i)), ~vec2<i32>(var_1.x, 0i) ^ -(vec2<i32>(2147483647i, 1i) ^ var_1), select(vec2<bool>(all(vec2<bool>(var_0.c, false)), var_0.c), select(!vec2<bool>(false, var_0.b), vec2<bool>(var_0.c, false), vec2<bool>(false, var_0.c)), !(!vec2<bool>(var_0.c, var_0.b)))), select(!(!(!vec2<bool>(var_0.c, true))), !select(vec2<bool>(false, false), vec2<bool>(true, var_0.b), any(vec2<bool>(true, false))), true), func_3(~1u > _wgslsmith_add_u32(var_0.d.x, ~0u), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -147f), var_0.b, all(select(vec2<bool>(true, var_0.c), vec2<bool>(var_0.b, var_0.b), vec2<bool>(false, true))), min(var_0.d, _wgslsmith_div_vec3_u32(vec3<u32>(global1.x, 57516u, var_0.d.x), var_0.d))), Struct_1(832f, var_0.b, (var_0.a <= var_0.a) || var_0.c, ~vec3<u32>(u_input.a, 1u, var_0.d.x)), !select(select(vec4<bool>(false, var_0.c, false, true), vec4<bool>(false, false, true, true), false), select(vec4<bool>(false, var_0.c, var_0.c, true), vec4<bool>(true, true, false, var_0.b), var_0.c), !var_0.b)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(_wgslsmith_add_u32(global1.x, 22793u), _wgslsmith_mod_u32(global1.x, global1.x)), ~vec2<u32>(~u_input.a, func_1(var_0)), countOneBits(~vec2<u32>(16937u, 17051u))));
    global1 = var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer((var_0.d.x << (u_input.a % 32u)) ^ ~5197u);
}

