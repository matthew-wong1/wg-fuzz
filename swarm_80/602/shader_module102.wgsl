struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    let var_0 = Struct_1(true, true, ~(~_wgslsmith_mult_u32(0u, 4294967295u)) >> (_wgslsmith_div_u32(~59167u, u_input.b.x) % 32u));
    let var_1 = vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(26300u, 4294967295u, u_input.b.x, u_input.b.x) << (vec4<u32>(68082u, 21717u, var_0.c, u_input.b.x) % vec4<u32>(32u)), max(vec4<u32>(0u, u_input.b.x, u_input.b.x, 0u), vec4<u32>(u_input.b.x, 43668u, var_0.c, 0u))), 47805u) >> (~(~(vec2<u32>(12508u, 0u) & u_input.b) >> (vec2<u32>(6745u << (var_0.c % 32u), firstLeadingBit(var_0.c)) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_2 = var_0;
    var_2 = Struct_1(true, var_2.b, ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(49320u, var_0.c), 4294967295u, 4294967295u | var_0.c), 1u));
    let var_3 = Struct_1(!var_2.a, false, 33060u);
    return !var_3.b;
}

fn func_2() -> bool {
    var var_0 = 1u;
    var var_1 = Struct_1(false, !func_3(), 1u << (1u % 32u));
    let var_2 = vec2<bool>(~17390u > _wgslsmith_add_u32(~14415u, u_input.b.x), false);
    var_1 = Struct_1(7988u >= _wgslsmith_dot_vec3_u32(abs(max(vec3<u32>(47825u, 1u, var_1.c), vec3<u32>(97257u, var_1.c, 4294967295u))), ~(vec3<u32>(u_input.b.x, 11060u, 6148u) | vec3<u32>(u_input.b.x, 30234u, var_1.c))), var_2.x, 0u);
    let var_3 = -1231f;
    return func_3() || true;
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = !any(vec4<bool>(false | func_2(), all(select(vec2<bool>(true, true), vec2<bool>(true, false), false)), 0i < u_input.a.x, true));
    var var_1 = Struct_1(var_0, !select(-2147483647i <= u_input.a.x, var_0, true | var_0) & true, u_input.b.x);
    var_1 = Struct_1(0i < ~u_input.a.x, var_1.a, _wgslsmith_dot_vec3_u32(max(vec3<u32>(var_1.c, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 11709u, var_1.c), vec3<u32>(u_input.b.x, 0u, 4294967295u)), var_1.c), vec3<u32>(1u, 16565u, 23766u) >> ((vec3<u32>(var_1.c, 1u, u_input.b.x) | vec3<u32>(u_input.b.x, u_input.b.x, 75510u)) % vec3<u32>(32u))), ~select(~vec3<u32>(36122u, var_1.c, 0u), vec3<u32>(24651u, 28324u, var_1.c) & vec3<u32>(41892u, 31360u, 0u), func_2())));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-593f, -269f, arg_0)))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1062f, 1073f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, 1000f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(214f, arg_0, arg_0))) - vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(arg_0, arg_0)))));
    let var_3 = vec4<u32>(~17614u, ~abs(abs(54411u >> (var_1.c % 32u))), u_input.b.x, ~min(abs(1u), _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), ~var_1.c)));
    return ~(u_input.b.x & ((firstLeadingBit(var_3.x) & _wgslsmith_dot_vec3_u32(vec3<u32>(29252u, 4294967295u, u_input.b.x), var_3.zyy)) | 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec4<i32>(1i, _wgslsmith_mult_i32(u_input.a.x, -79192i), (abs(u_input.a.x) & -2147483647i) | u_input.a.x, 3108i);
    var var_1 = vec3<u32>(_wgslsmith_mod_u32(u_input.b.x, 27307u), ~u_input.b.x, _wgslsmith_clamp_u32(u_input.b.x << ((0u | (u_input.b.x ^ u_input.b.x)) % 32u), _wgslsmith_div_u32(~func_1(1043f), ~u_input.b.x), _wgslsmith_mult_u32(0u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.b.x, u_input.b.x, 0u)), select(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(1u, 1u, 569u), true)))));
    var_1 = max(~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.b.x, var_1.x), ~vec3<u32>(var_1.x, 47356u, 43029u)), ~vec3<u32>(var_1.x, 0u >> (var_1.x % 32u), max(13019u, 4294967295u))) ^ countOneBits(~select(reverseBits(vec3<u32>(var_1.x, 1u, 35002u)), ~vec3<u32>(0u, 0u, var_1.x), vec3<bool>(true, false, true)));
    var var_2 = Struct_1(true & (any(vec2<bool>(true, false)) || (u_input.a.x >= 0i)), true, _wgslsmith_add_u32(_wgslsmith_mod_u32(min(6521u, var_1.x), 0u) >> (_wgslsmith_div_u32(u_input.b.x, ~1u) % 32u), ~func_1(_wgslsmith_f_op_f32(-719f - -745f))));
    var_2 = Struct_1(var_2.a, true, _wgslsmith_sub_u32(0u, _wgslsmith_mult_u32(var_2.c, u_input.b.x & u_input.b.x)));
    let var_3 = Struct_1(false, true, 0u);
    let var_4 = Struct_1(true, true, 1u);
    var var_5 = var_3;
    let var_6 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(abs(_wgslsmith_mod_i32(var_0.x, _wgslsmith_div_i32(-12011i, 1i))), ~u_input.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-590f, 350f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(600f, -1000f))))))));
}

