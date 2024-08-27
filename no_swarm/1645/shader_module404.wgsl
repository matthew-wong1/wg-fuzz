struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(2295f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-648f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(775f, _wgslsmith_f_op_f32(-1786f * 739f))))));
    return u_input.b;
}

fn func_2() -> vec3<i32> {
    var var_0 = func_3();
    var_0 = u_input.d.x;
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-698f, -200f)), 1f));
    var var_2 = Struct_2(Struct_1(false, _wgslsmith_div_vec4_u32(select(vec4<u32>(1u, u_input.d.x, u_input.e.x, 0u), vec4<u32>(u_input.b, 1u, 61487u, u_input.b) << (u_input.e % vec4<u32>(32u)), vec4<bool>(true, true, false, true)), ~vec4<u32>(u_input.d.x, 1u, u_input.b, u_input.d.x))), Struct_1(!(!any(vec3<bool>(false, false, false))), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.b, 0u), _wgslsmith_mod_u32(u_input.d.x, u_input.b)), ~(~1u), 38076u, countOneBits(~u_input.b))), Struct_1(any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))) & any(vec3<bool>(true, true, true)), _wgslsmith_div_vec4_u32(reverseBits(u_input.d), ~_wgslsmith_mult_vec4_u32(u_input.d, u_input.e))));
    var var_3 = 2147483647i;
    return min(vec3<i32>(u_input.a, ~(-37340i), _wgslsmith_dot_vec3_i32(select(vec3<i32>(-15961i, u_input.c, 0i), vec3<i32>(u_input.c, 20780i, 16963i), vec3<bool>(true, false, var_2.b.a)) >> (min(var_2.b.b.wzw, u_input.e.xww) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.c, 45182i, u_input.a), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 13525i, u_input.c), vec3<i32>(-1i, u_input.c, u_input.a))))), vec3<i32>(_wgslsmith_mod_i32(u_input.c, u_input.a), i32(-1i) * -1i, ~u_input.a));
}

fn func_4(arg_0: vec3<i32>) -> bool {
    return !select(true, false, true) || any(select(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), !all(vec3<bool>(true, false, true))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2733f + -1004f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - 873f) + 1f));
    return Struct_1(select(var_0.a, func_4(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -765f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-722f)) * _wgslsmith_f_op_f32(step(var_1, var_1)))), ~(~(~u_input.e)));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec3<u32>) -> bool {
    let var_0 = firstTrailingBit(u_input.e);
    let var_1 = func_1(arg_0, ~(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 39157u, arg_0.b.x), abs(arg_0.b.xxx))));
    var var_2 = ~u_input.a;
    let var_3 = 29864u;
    var var_4 = Struct_2(Struct_1(var_1.a, _wgslsmith_mult_vec4_u32(arg_2.b, _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.b.x, 12575u, arg_3.x, 1u), ~var_0))), Struct_1(arg_2.a, var_1.b), Struct_1(!(true | var_1.a), reverseBits(~vec4<u32>(var_1.b.x, 7822u, 0u, 0u))));
    return u_input.a == -(~27540i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(func_5(Struct_1(true, vec4<u32>(~0u, _wgslsmith_mult_u32(u_input.e.x, u_input.e.x), 0u, 4294967295u)), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(30858u, 65631u)), ~(~vec2<u32>(1u, u_input.d.x))), func_1(Struct_1(true, vec4<u32>(7058u, 0u, 54450u, 4294967295u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.d.x, 32761u) | u_input.d.zzy, u_input.d.xzw)), vec3<u32>(u_input.e.x & 30701u, 6538u, u_input.b & reverseBits(27115u))), true);
    let var_1 = Struct_2(func_1(func_1(Struct_1(all(vec4<bool>(var_0.x, var_0.x, var_0.x, true)), ~u_input.e), select(u_input.e.wzy, _wgslsmith_add_vec3_u32(u_input.e.wwz, vec3<u32>(u_input.e.x, u_input.b, u_input.d.x)), 80328i <= u_input.a)), vec3<u32>(_wgslsmith_mod_u32(44206u, 7863u) & _wgslsmith_mod_u32(u_input.e.x, u_input.b), min(u_input.d.x & u_input.d.x, abs(45088u)), _wgslsmith_sub_u32(u_input.b >> (1u % 32u), firstLeadingBit(27028u)))), func_1(func_1(func_1(Struct_1(false, vec4<u32>(1u, 0u, 5349u, 4294967295u)), vec3<u32>(u_input.d.x, 1u, u_input.b)), ~vec3<u32>(u_input.b, 4294967295u, 42629u)), _wgslsmith_mult_vec3_u32(u_input.e.xwx, firstLeadingBit(vec3<u32>(1u, 1u, 1u)))), func_1(func_1(func_1(Struct_1(true, vec4<u32>(28513u, u_input.b, u_input.b, u_input.b)), countOneBits(vec3<u32>(0u, u_input.d.x, u_input.b))), ~vec3<u32>(u_input.b, 77737u, 0u)), vec3<u32>(u_input.b, _wgslsmith_sub_u32(~u_input.d.x, abs(u_input.e.x)), ~_wgslsmith_mod_u32(u_input.d.x, 1u))));
    var var_2 = abs(countOneBits(vec2<i32>(-u_input.a, u_input.c)));
    let var_3 = firstLeadingBit(var_1.c.b.x);
    var_2 = ~(~vec2<i32>(var_2.x, 22684i));
    let var_4 = var_1.c;
    let var_5 = all(!select(var_0, !var_0, vec2<bool>(!var_0.x, true)));
    let var_6 = func_1(func_1(func_1(Struct_1(func_1(Struct_1(true, var_1.c.b), var_1.c.b.zyw).a, firstTrailingBit(vec4<u32>(var_1.c.b.x, var_1.c.b.x, 4294967295u, 4294967295u))), ~(~var_1.c.b.yww)), u_input.e.zzy), var_4.b.xzw);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, 1u), ~var_3) | 55886u, vec3<f32>(-1753f, -852f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1088f)))));
}

