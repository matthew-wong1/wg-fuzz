struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: bool,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_4) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.b, -178f, -903f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1021f), max(_wgslsmith_mod_vec2_i32(-vec2<i32>(2147483647i, 2147483647i), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_2.b.b, 2147483647i), -vec2<i32>(-21136i, u_input.a))), arg_2.b.c.zy));
    let var_1 = !arg_2.a.a.x;
    var var_2 = Struct_5(!var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2075f + arg_2.a.b))) + _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_div_f32(arg_2.a.b, -466f))), true | var_1, var_0.b, 15736u);
    var var_3 = 41841u;
    var var_4 = arg_2.b;
    return select(false, all(arg_2.a.a), false);
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    var var_0 = ~vec2<u32>(~1u, _wgslsmith_add_u32(reverseBits(6340u), 45534u));
    var_0 = vec2<u32>(abs(abs(_wgslsmith_mod_u32(4294967295u, ~var_0.x))), ~var_0.x);
    let var_1 = vec3<bool>(false, true, false);
    var_0 = vec2<u32>(_wgslsmith_div_u32(var_0.x, max(41524u & var_0.x, 1u)), var_0.x);
    var_0 = ~vec2<u32>(reverseBits(24776u), _wgslsmith_add_u32(~var_0.x, 69219u << (var_0.x % 32u))) ^ ~(~(~vec2<u32>(104961u, var_0.x) | (vec2<u32>(16133u, var_0.x) & vec2<u32>(4294967295u, 13227u))));
    return _wgslsmith_f_op_f32(f32(-1f) * -861f);
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: vec4<i32>, arg_3: vec4<bool>) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a)), arg_0.a.x, min(vec2<i32>(arg_2.x, abs(_wgslsmith_clamp_i32(1i, 2147483647i, -2147483647i))), _wgslsmith_clamp_vec2_i32(abs(arg_2.xy), arg_2.xx, _wgslsmith_mod_vec2_i32(-vec2<i32>(arg_2.x, u_input.a), arg_2.zy | vec2<i32>(arg_2.x, 21547i)))));
    let var_1 = -vec2<i32>(arg_2.x, -8628i);
    let var_2 = Struct_3(select(arg_3, vec4<bool>(any(!arg_3.zzy), arg_3.x, !all(vec4<bool>(false, arg_3.x, arg_3.x, false)), func_2(max(vec3<u32>(1u, 84732u, 0u), vec3<u32>(arg_1, 32402u, 53039u)), ~1u, Struct_4(Struct_3(arg_3, var_0.b, vec3<u32>(arg_1, arg_1, 4294967295u)), Struct_1(vec3<i32>(arg_0.c.x, 25072i, var_0.c.x), arg_0.c.x, vec4<i32>(-36261i, -20896i, var_1.x, 0i), 14250u)))), true), _wgslsmith_f_op_f32(947f - 389f), _wgslsmith_sub_vec3_u32(firstTrailingBit(select(~vec3<u32>(4294967295u, 1u, arg_1), ~vec3<u32>(1u, 29084u, arg_1), arg_3.xxy)), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, arg_1, 1u), ~vec3<u32>(arg_1, arg_1, 1u))));
    let var_3 = Struct_5(_wgslsmith_f_op_f32(-var_0.b) <= arg_0.a.x, _wgslsmith_f_op_f32(func_3(arg_2.xxw)), false, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.a.x * -621f))), (~select(arg_1, var_2.c.x, true) >> (~_wgslsmith_sub_u32(var_2.c.x, arg_1) % 32u)) << (arg_1 % 32u));
    var var_4 = Struct_1(~arg_2.zyz, arg_2.x, arg_2, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(_wgslsmith_add_u32(arg_1, var_2.c.x), ~var_2.c.x)), ~firstLeadingBit(abs(vec2<u32>(30518u, arg_1)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-239f, 1789f), _wgslsmith_f_op_f32(select(1054f, 999f, true)), _wgslsmith_f_op_f32(f32(-1f) * -272f)))));
    let var_1 = Struct_4(Struct_3(vec4<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), !func_1(Struct_2(vec3<f32>(var_0.x, 558f, var_0.x), var_0.x, vec2<i32>(-2147483647i, u_input.a)), 0u, vec4<i32>(-19294i, u_input.a, u_input.a, u_input.a), vec4<bool>(true, false, true, false))), _wgslsmith_f_op_f32(round(var_0.x)), ~(~firstLeadingBit(vec3<u32>(32421u, 4294967295u, 1u)))), Struct_1(select(vec3<i32>(u_input.a, u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-14403i, u_input.a, -23694i), vec3<i32>(u_input.a, -1i, 39993i))), _wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.a, u_input.a), vec3<i32>(-2147483647i, -14324i, u_input.a)) | ~vec3<i32>(u_input.a, u_input.a, -22721i), true), ~(-24106i), vec4<i32>(-2147483647i, 7426i, -80137i, _wgslsmith_add_i32(u_input.a, -15964i)) ^ -max(vec4<i32>(u_input.a, 0i, u_input.a, 0i), vec4<i32>(u_input.a, u_input.a, u_input.a, -1i)), _wgslsmith_mult_u32(select(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 41366u), vec2<u32>(22796u, 0u)), false), 55604u)));
    var var_2 = ~(~countOneBits(~(vec4<u32>(var_1.b.d, 34439u, var_1.b.d, var_1.a.c.x) ^ vec4<u32>(var_1.a.c.x, 0u, 4294967295u, 9313u))));
    var_2 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(~69247u, firstLeadingBit(var_2.x), ~(12096u >> (var_2.x % 32u)), 53225u), vec4<u32>(~_wgslsmith_div_u32(var_1.a.c.x, 1u), var_1.a.c.x, _wgslsmith_div_u32(var_2.x, 80160u), var_2.x & ~1u));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-557f, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(616f + -1000f)) * -313f)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.b) * _wgslsmith_f_op_f32(round(1150f))), _wgslsmith_f_op_f32(var_1.a.b + var_1.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-115f)) + _wgslsmith_f_op_f32(1116f * var_1.a.b))))));
    var_2 = ~(~countOneBits(vec4<u32>(var_2.x, var_2.x, 45750u, 1u)) >> (_wgslsmith_clamp_vec4_u32(~reverseBits(vec4<u32>(var_1.a.c.x, var_1.a.c.x, var_2.x, 77394u)), vec4<u32>(~var_1.b.d, min(0u, 0u), ~var_1.b.d, ~var_2.x), vec4<u32>(abs(var_1.b.d), _wgslsmith_sub_u32(var_1.a.c.x, var_2.x), var_1.b.d, firstTrailingBit(55169u))) % vec4<u32>(32u)));
    let var_3 = reverseBits(1u);
    let x = u_input.a;
    s_output = StorageBuffer(-2067f, ~(~(vec4<u32>(var_2.x, 52014u, 1u, var_2.x) | vec4<u32>(var_1.a.c.x, var_3, var_2.x, 33275u))) << (firstLeadingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(var_3, 4294967295u, 1u, var_1.a.c.x), vec4<u32>(var_3, 55703u, 4294967295u, 51916u))) % vec4<u32>(32u)), ~(~var_1.b.c));
}

