struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
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

var<private> global0: Struct_5 = Struct_5(Struct_2(6328u, vec4<u32>(12203u, 4294967295u, 1u, 0u), Struct_1(42204u, 4294967295u)), vec2<f32>(1076f, 428f), false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: u32) -> vec2<f32> {
    var var_0 = Struct_2(reverseBits(min(arg_1, _wgslsmith_add_u32(4294967295u, 0u))) ^ (4260u << (max(_wgslsmith_dot_vec4_u32(global0.a.b, vec4<u32>(0u, 9814u, arg_1, 77382u)), global0.a.c.a) % 32u)), global0.a.b, Struct_1(global0.a.a, global0.a.a));
    var_0 = Struct_2(_wgslsmith_dot_vec2_u32(var_0.b.wz, vec2<u32>(~var_0.a, 0u)) & arg_1, min(select(var_0.b, vec4<u32>(~0u, _wgslsmith_add_u32(arg_0, 0u), ~68994u, global0.a.c.b ^ 53880u), global0.c), var_0.b), global0.a.c);
    var var_1 = _wgslsmith_f_op_vec2_f32(round(global0.b));
    var var_2 = vec3<bool>(any(vec4<bool>(global0.c, true, select(all(vec4<bool>(false, false, false, global0.c)), all(vec2<bool>(false, true)), !global0.c), any(vec3<bool>(global0.c, global0.c, true)))), false, !all(select(select(vec4<bool>(global0.c, global0.c, false, true), vec4<bool>(false, true, global0.c, false), vec4<bool>(global0.c, false, true, false)), select(vec4<bool>(global0.c, global0.c, global0.c, global0.c), vec4<bool>(false, global0.c, true, false), vec4<bool>(global0.c, false, global0.c, global0.c)), true)));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global0.b)));
    return vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(392f - _wgslsmith_f_op_f32(-var_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.b.x))))));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.b.x * global0.b.x))) + _wgslsmith_f_op_f32(-1235f - -826f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1811f)) + 1300f)) - -1216f);
    global0 = Struct_5(global0.a, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(448f * global0.b.x), _wgslsmith_div_f32(global0.b.x, global0.b.x)) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global0.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(55020u, ~global0.a.a)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.b.x, -657f))) * _wgslsmith_f_op_vec2_f32(global0.b + vec2<f32>(-1000f, global0.b.x)))))), !global0.c);
    var var_1 = Struct_5(global0.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(200f)))), global0.b.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global0.b))))), any(select(vec4<bool>(74478u < global0.a.b.x, global0.c, global0.c, true), !select(vec4<bool>(global0.c, global0.c, false, true), vec4<bool>(global0.c, global0.c, false, global0.c), true), vec4<bool>(!global0.c, true, true, arg_0 > u_input.a.x))));
    var var_2 = Struct_2(~var_1.a.b.x, select(~var_1.a.b, _wgslsmith_mult_vec4_u32(~(~var_1.a.b), firstLeadingBit(~var_1.a.b)), true), var_1.a.c);
    var_2 = Struct_2(_wgslsmith_dot_vec3_u32(abs(~countOneBits(var_1.a.b.xzz)), ~_wgslsmith_div_vec3_u32(~var_1.a.b.wyw, ~vec3<u32>(var_2.c.a, 68886u, 50927u))), reverseBits(~(~select(global0.a.b, vec4<u32>(global0.a.c.b, 0u, 118487u, var_1.a.b.x), vec4<bool>(global0.c, false, true, false)))), var_2.c);
    return global0.a;
}

fn func_1(arg_0: i32, arg_1: Struct_4) -> Struct_2 {
    let var_0 = Struct_4(func_2(~(~(-32438i))));
    let var_1 = global0.a.c;
    var var_2 = Struct_3(global0.b.x, 30572i);
    var var_3 = ~(~(~max(~global0.a.b.zwy, ~var_0.a.b.wyw)));
    var_3 = global0.a.b.wyz;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_5(Struct_2(global0.a.b.x, _wgslsmith_mod_vec4_u32(vec4<u32>(~0u, _wgslsmith_mod_u32(4294967295u, global0.a.c.b), 0u, _wgslsmith_dot_vec3_u32(global0.a.b.zyw, global0.a.b.wzx)), ~global0.a.b), Struct_1(23317u, _wgslsmith_add_u32(14060u & global0.a.a, _wgslsmith_add_u32(1u, global0.a.a)))), global0.b, true);
    var var_0 = Struct_4(func_1(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-28535i, u_input.b, u_input.b, u_input.a.x) | vec4<i32>(0i, 0i, 77116i, -1i), vec4<i32>(u_input.b, -45301i, 1i, -12962i)), -1i), Struct_4(global0.a)));
    var var_1 = Struct_1(_wgslsmith_mult_u32(min(1u, var_0.a.a), var_0.a.a), global0.a.b.x);
    let var_2 = ~abs(14112i);
    let var_3 = func_2(select(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(u_input.b, 1i)), ~vec2<i32>(var_2, 2147483647i)), ~countOneBits(-28756i)), 1i, global0.c)).c;
    let var_4 = global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(57786u);
}

