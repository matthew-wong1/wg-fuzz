struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<u32>,
    d: vec3<bool>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1150f, -421f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(561f, 1000f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-493f, -1009f), vec2<f32>(-1290f, 1430f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-300f, 1200f) * vec2<f32>(880f, 1025f)))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1726f), -1000f))), !vec2<bool>(_wgslsmith_add_u32(u_input.b, 4294967295u) <= ~49827u, false)));
    var var_1 = ~(~reverseBits(firstTrailingBit(vec2<u32>(u_input.b, u_input.b)))) | ~vec2<u32>(reverseBits(select(11858u, 4294967295u, true)), u_input.b);
    return vec2<u32>(u_input.b, u_input.a ^ var_1.x);
}

fn func_3(arg_0: i32, arg_1: u32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2794f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(721f + -786f)))), countOneBits(-3040i | _wgslsmith_sub_i32(-2147483647i >> (1u % 32u), u_input.e.x)), firstLeadingBit((vec2<u32>(4294967295u, u_input.b) >> (vec2<u32>(arg_1, 0u) % vec2<u32>(32u))) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(65082u, 42374u), vec2<u32>(61674u, u_input.a))) >> ((firstTrailingBit(abs(vec2<u32>(u_input.b, 4294967295u))) | vec2<u32>(arg_1, _wgslsmith_div_u32(44105u, 14487u))) % vec2<u32>(32u)), vec4<u32>(~_wgslsmith_add_u32(u_input.b, arg_1), 1u, _wgslsmith_mult_u32(min(24312u, arg_1), abs(arg_1)), 0u) & min(~_wgslsmith_sub_vec4_u32(vec4<u32>(9024u, 4294967295u, u_input.a, arg_1), vec4<u32>(u_input.a, 65273u, 1u, 4294967295u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(arg_1, 4294967295u, u_input.a, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1, 4294967295u, 14214u, arg_1), vec4<u32>(u_input.a, 4294967295u, u_input.b, arg_1)))));
    let var_1 = Struct_1(-176f, var_0.b, ~(~(reverseBits(var_0.c) >> (~17306u % 32u))), _wgslsmith_div_vec2_u32(~vec2<u32>(~0u, firstTrailingBit(u_input.a)), reverseBits(var_0.e.zw) ^ ~(~vec2<u32>(62413u, arg_1))), var_0.e & vec4<u32>(_wgslsmith_sub_u32(var_0.e.x, 1u) ^ 34567u, firstLeadingBit(countOneBits(arg_1)), 76635u, ~53372u));
    var_0 = var_1;
    var var_2 = vec4<u32>(_wgslsmith_sub_u32(1u, u_input.a), 4294967295u, var_0.e.x >> (~arg_1 % 32u), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, arg_1, 62381u), vec3<u32>(4294967295u, var_1.d.x, u_input.b)))) & max(max(vec4<u32>(u_input.a, arg_1, 35955u, u_input.a) | (vec4<u32>(4294967295u, 4808u, arg_1, 1u) & var_1.e), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.d.x, var_1.e.x, arg_1, var_0.d.x) & var_1.e, var_1.e)), abs(~var_1.e));
    var_2 = var_1.e;
    return var_0.e.x;
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> i32 {
    var var_0 = Struct_1(790f, _wgslsmith_f_op_f32(-arg_0.b.a), ~min(_wgslsmith_div_i32(select(-8522i, u_input.c.x, true), ~0i), arg_0.b.c), func_2(), vec4<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, 0u)), vec2<u32>(0u, u_input.b)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(23942u, u_input.b), arg_0.c.zy), _wgslsmith_mod_u32(4294967295u, 35952u), ~u_input.a, arg_0.c.x), select(~vec4<u32>(1u, 55632u, arg_0.b.e.x, u_input.a), _wgslsmith_mod_vec4_u32(arg_0.b.e, vec4<u32>(0u, 18163u, u_input.a, 79344u)), !arg_0.a)), ~(~_wgslsmith_div_u32(arg_0.b.d.x, 51609u)), 4294967295u));
    var_0 = Struct_1(_wgslsmith_f_op_f32(step(-818f, var_0.a)), 624f, 36956i, _wgslsmith_add_vec2_u32(var_0.e.yw, arg_0.c.yy << (var_0.e.xy % vec2<u32>(32u))), ~vec4<u32>(u_input.b, _wgslsmith_add_u32(func_3(var_0.c, 4294967295u), _wgslsmith_mult_u32(var_0.d.x, u_input.b)), _wgslsmith_sub_u32(abs(11843u), 1u), (var_0.d.x ^ u_input.a) & (arg_0.b.d.x << (var_0.d.x % 32u))));
    let var_1 = select(vec4<bool>(!(arg_0.a.x && false) & false, false, arg_0.d.x, any(!vec3<bool>(false, arg_0.d.x, arg_0.a.x))), arg_0.a, false);
    let var_2 = Struct_2(!vec4<bool>(all(arg_0.d), ~45404u < (u_input.b ^ arg_0.c.x), false, true), Struct_1(-622f, _wgslsmith_f_op_f32(round(829f)), arg_0.b.c, ~arg_0.c.xx, arg_0.b.e), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(var_0.e.xyw, arg_0.c), _wgslsmith_sub_vec3_u32(~var_0.e.zyy, vec3<u32>(1u, 1u, 0u))), ~(~vec3<u32>(1u, 6844u, 38504u)) ^ reverseBits(var_0.e.xyw)), arg_0.d, _wgslsmith_add_i32(-2147483647i, u_input.d));
    var_0 = arg_0.b;
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~func_1(Struct_2(vec4<bool>(false, false, true, true), Struct_1(-277f, 737f, 0i, vec2<u32>(u_input.b, 4294967295u), vec4<u32>(u_input.b, u_input.a, 1u, 0u)), ~vec3<u32>(u_input.a, 4294967295u, 17747u), vec3<bool>(false, false, false), _wgslsmith_div_i32(1i, u_input.c.x)), ~(-7341i)));
    var_0 = i32(-1i) * -u_input.d;
    let var_1 = Struct_2(vec4<bool>(all(vec3<bool>(all(vec4<bool>(true, false, true, false)), true, any(vec3<bool>(true, false, true)))), any(vec4<bool>(true, true, true, true)) & any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true))), true, true), Struct_1(-1082f, 216f, _wgslsmith_div_i32(-6210i, u_input.d) >> (1u % 32u), select(_wgslsmith_add_vec2_u32(vec2<u32>(33187u, u_input.b), vec2<u32>(u_input.b, u_input.b)) & _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 14861u), vec2<u32>(u_input.a, 130351u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(u_input.a, 5973u)), all(vec4<bool>(false, false, true, false))), max(~vec4<u32>(12275u, 0u, u_input.b, u_input.a), select(~vec4<u32>(u_input.a, 95842u, 6944u, u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.a, u_input.a, u_input.b), vec4<u32>(u_input.b, u_input.a, u_input.b, u_input.a)), true))), ~(~vec3<u32>(select(u_input.b, u_input.b, true), ~39959u, _wgslsmith_mult_u32(u_input.a, 4294967295u))), vec3<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-545f, 760f), _wgslsmith_f_op_f32(-1049f * -1745f), select(false, true, true))) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1695f))), true, !(u_input.b < 18371u) || !(u_input.d == u_input.e.x)), u_input.c.x);
    var var_2 = u_input.e.zy;
    var_2 = vec2<i32>(var_2.x | (var_2.x >> (_wgslsmith_mod_u32(var_1.b.e.x, abs(var_1.b.e.x)) % 32u)), u_input.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-577f, -1021f, var_1.b.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.a, var_1.b.a, 1513f) - vec3<f32>(-600f, var_1.b.a, 675f)), select(vec3<bool>(var_1.a.x, var_1.a.x, true), vec3<bool>(true, var_1.d.x, false), true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1619f, 687f, var_1.b.b))))), var_1.b.a);
}

