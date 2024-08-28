struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
    c: i32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_4, arg_1: f32) -> u32 {
    let var_0 = ~vec4<i32>(arg_0.c, 0i, -7991i, abs(_wgslsmith_add_i32(arg_0.c, _wgslsmith_sub_i32(u_input.b, u_input.a.x))));
    let var_1 = Struct_1(select(vec4<bool>(true, all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-arg_0.a.x) > _wgslsmith_f_op_f32(arg_1 + arg_1), true), !select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(false, true, false, true), arg_1 <= arg_1), true), 25516i, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(arg_1, -205f), _wgslsmith_f_op_f32(f32(-1f) * -528f), 204f))))));
    var var_2 = (vec2<i32>(-2147483647i, _wgslsmith_mod_i32(u_input.b, arg_0.c | var_1.b)) >> (~select(_wgslsmith_clamp_vec2_u32(u_input.c, vec2<u32>(68918u, u_input.c.x), vec2<u32>(u_input.c.x, 4294967295u)), ~vec2<u32>(u_input.c.x, 1u), true) % vec2<u32>(32u))) >> (_wgslsmith_mult_vec2_u32(min(reverseBits(vec2<u32>(u_input.d, u_input.e.x)), u_input.c) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.e.x) | vec2<u32>(25011u, 0u), ~vec2<u32>(0u, 49042u)) % vec2<u32>(32u)), u_input.e) % vec2<u32>(32u));
    var var_3 = _wgslsmith_add_vec3_u32(vec3<u32>(u_input.e.x ^ 0u, _wgslsmith_sub_u32(u_input.e.x, ~_wgslsmith_clamp_u32(u_input.e.x, arg_0.b, 0u)), u_input.e.x), vec3<u32>(~arg_0.b, _wgslsmith_dot_vec2_u32(vec2<u32>(63087u, arg_0.b), _wgslsmith_mod_vec2_u32(abs(vec2<u32>(u_input.d, u_input.d)), u_input.e)), u_input.e.x));
    var_3 = _wgslsmith_mult_vec3_u32(max(~(~select(vec3<u32>(4294967295u, var_3.x, arg_0.b), vec3<u32>(4294967295u, u_input.e.x, u_input.e.x), var_1.a.x)), _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(arg_0.b, var_3.x, 69034u)) | ~vec3<u32>(u_input.d, arg_0.b, 13442u), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.x, 1u), var_3.zz), 0u, min(u_input.c.x, u_input.e.x)))), ((abs(vec3<u32>(var_3.x, u_input.d, arg_0.b)) >> (select(vec3<u32>(u_input.e.x, 12214u, arg_0.b), vec3<u32>(4294967295u, 26922u, 0u), vec3<bool>(false, false, false)) % vec3<u32>(32u))) & firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, arg_0.b, 0u), vec3<u32>(u_input.e.x, arg_0.b, 52838u)))) >> (vec3<u32>(countOneBits(1u), u_input.d, ~(~1u)) % vec3<u32>(32u)));
    return 22960u;
}

fn func_2() -> u32 {
    let var_0 = min(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.e, vec2<u32>(263u, abs(u_input.e.x))), vec2<u32>(func_3(Struct_4(vec2<f32>(-382f, 578f), 6241u, 3866i), -333f), abs(min(u_input.e.x, 0u))), _wgslsmith_div_vec2_u32(min(u_input.e, ~vec2<u32>(1u, 4294967295u)), _wgslsmith_div_vec2_u32(~u_input.c, vec2<u32>(u_input.e.x, 46702u) >> (u_input.e % vec2<u32>(32u))))), _wgslsmith_mod_vec2_u32(firstTrailingBit(u_input.c), u_input.c));
    var var_1 = true;
    var_1 = true;
    var var_2 = Struct_2(any(!vec3<bool>(true, all(vec3<bool>(false, false, false)), true)));
    var_1 = var_2.a;
    return abs(~1u);
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    return ~_wgslsmith_clamp_u32(~(~2667u) << (func_2() % 32u), u_input.d, ~(u_input.d ^ u_input.e.x) | (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.d, u_input.c.x), vec4<u32>(36137u, 82175u, 2265u, u_input.e.x)) | 0u));
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    var var_0 = Struct_1(vec4<bool>(all(vec3<bool>(true, true, true)), all(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), true)), true, !(all(vec2<bool>(false, true)) && (u_input.b < u_input.a.x))), u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(460f, -344f, arg_0.a.x))))));
    var var_1 = var_0.c;
    var var_2 = Struct_1(vec4<bool>(var_0.a.x, !var_0.a.x || (var_0.b < arg_0.c), any(var_0.a), (u_input.c.x == 4386u) & true), ~1i, vec3<f32>(-1337f, arg_0.a.x, _wgslsmith_f_op_f32(floor(-445f))));
    var_2 = Struct_1(select(select(vec4<bool>(var_2.a.x, true, true, true), var_0.a, select(!vec4<bool>(var_2.a.x, var_2.a.x, true, false), vec4<bool>(var_0.a.x, true, var_2.a.x, var_2.a.x), any(vec4<bool>(false, true, var_0.a.x, true)))), !(!vec4<bool>(var_0.a.x, true, false, var_2.a.x)), vec4<bool>(true, !var_2.a.x, (true && var_0.a.x) == !var_0.a.x, true)), _wgslsmith_mod_i32(-(~(~(-1i))), _wgslsmith_mod_i32(~(i32(-1i) * -27585i), countOneBits(var_0.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_2.c))));
    let var_3 = Struct_5(u_input.a, Struct_1(!(!select(var_0.a, var_0.a, var_2.a.x)), arg_0.c, vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(var_2.c.x + _wgslsmith_f_op_f32(max(var_2.c.x, var_0.c.x))), var_2.c.x)));
    return var_3.b;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: Struct_4) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(arg_2.a.x + -1715f);
    let var_1 = ~vec3<u32>(_wgslsmith_mod_u32(select(max(arg_2.b, 65152u), arg_2.b, func_4(Struct_4(arg_2.a, arg_3.b, u_input.b)).a.x), 1u), 35069u & (~u_input.d | u_input.e.x), arg_1.x);
    var_0 = -119f;
    var_0 = _wgslsmith_f_op_f32(-arg_2.a.x);
    var_0 = _wgslsmith_f_op_f32(-arg_3.a.x);
    return Struct_2(true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1186f)))), 1909f), _wgslsmith_mult_u32(u_input.e.x, u_input.c.x), firstTrailingBit(abs(_wgslsmith_clamp_i32(u_input.a.x, -13318i, ~u_input.a.x))));
    var var_1 = all(vec3<bool>(true, false, all(vec3<bool>(true, true, true))));
    let var_2 = -55309i;
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(1174f + var_0.a.x));
    var var_4 = func_5(func_4(Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-783f, 222f))), func_1(min(vec3<i32>(var_2, var_0.c, var_0.c), vec3<i32>(2257i, var_2, 2497i))), u_input.b)), ~select(_wgslsmith_mult_vec2_u32(u_input.c, _wgslsmith_clamp_vec2_u32(u_input.c, u_input.e, u_input.c)), _wgslsmith_mult_vec2_u32(u_input.c, firstLeadingBit(vec2<u32>(u_input.c.x, 24386u))), true), Struct_4(vec2<f32>(1f, 1f), u_input.e.x, var_0.c), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(-1i) * -reverseBits(vec2<i32>(-1i, -7239i)), u_input.a, !(!vec2<bool>(false, var_4.a))));
}

