struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec3<u32>,
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = u_input.d.x;
    let var_1 = ~(~_wgslsmith_clamp_u32(~(~u_input.a), u_input.d.x, u_input.c.x));
    let var_2 = Struct_5(false);
    let var_3 = _wgslsmith_sub_vec4_i32(select(select(_wgslsmith_sub_vec4_i32(vec4<i32>(-1313i, -53649i, -14039i, u_input.b.x), u_input.b), ~vec4<i32>(u_input.b.x, arg_0.a, arg_0.a, 2147483647i), var_2.a), -max(-u_input.b, _wgslsmith_mod_vec4_i32(u_input.b, u_input.b)), select(vec4<bool>(!var_2.a, false, all(vec2<bool>(var_2.a, false)), false & var_2.a), !(!vec4<bool>(var_2.a, var_2.a, var_2.a, var_2.a)), select(select(vec4<bool>(var_2.a, false, var_2.a, true), vec4<bool>(var_2.a, var_2.a, var_2.a, false), vec4<bool>(true, var_2.a, true, var_2.a)), select(vec4<bool>(var_2.a, false, var_2.a, true), vec4<bool>(false, var_2.a, var_2.a, var_2.a), vec4<bool>(var_2.a, var_2.a, var_2.a, false)), vec4<bool>(var_2.a, false, false, var_2.a)))), vec4<i32>(-1i) * -vec4<i32>(-20499i, arg_0.a >> (0u % 32u), u_input.b.x, u_input.b.x));
    var var_4 = all(vec3<bool>(true, true, all(select(!vec4<bool>(var_2.a, true, var_2.a, var_2.a), !vec4<bool>(var_2.a, true, var_2.a, true), select(vec4<bool>(true, var_2.a, var_2.a, false), vec4<bool>(true, var_2.a, var_2.a, true), vec4<bool>(var_2.a, true, false, var_2.a))))));
    return _wgslsmith_add_i32(i32(-1i) * -(~(-3211i)), firstLeadingBit(-_wgslsmith_dot_vec4_i32(var_3 & vec4<i32>(23595i, arg_0.a, arg_0.a, var_3.x), var_3)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_5, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = u_input.c.x;
    let var_1 = ~(~countOneBits(vec3<u32>(~u_input.d.x, 4294967295u, arg_0.x << (var_0 % 32u))));
    var var_2 = Struct_2(i32(-1i) * -_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_sub_i32(u_input.b.x, 19649i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-194f, 876f), -647f, _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(arg_2.x * arg_2.x)))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(659f + var_2.b.x))), vec3<i32>(~func_3(Struct_2(-1i, vec3<f32>(arg_2.x, var_2.b.x, -444f))), 1i, ~28886i), var_2.a, vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_5 {
    var var_0 = true;
    let var_1 = func_2(u_input.d >> (~abs(vec4<u32>(0u, 0u, u_input.e.x, u_input.d.x)) % vec4<u32>(32u)), Struct_5(arg_1.x), vec4<f32>(arg_0.a, arg_0.d.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, arg_0.a)))), arg_0.a));
    var_0 = true;
    var_0 = arg_1.x;
    var_0 = true;
    return Struct_5(true);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec3<i32>) -> u32 {
    let var_0 = func_4(func_2(vec4<u32>(6312u, 44576u << (1u % 32u), ~max(u_input.a, 1u), _wgslsmith_clamp_u32(~u_input.d.x, _wgslsmith_dot_vec3_u32(u_input.c.zxz, vec3<u32>(0u, 0u, 0u)), abs(18997u))), Struct_5(true), vec4<f32>(arg_1.d.x, 438f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + arg_1.a) * -537f), _wgslsmith_f_op_f32(-arg_2.x))), !vec4<bool>(arg_0.x, _wgslsmith_div_i32(0i, arg_3.x) == (22242i ^ arg_1.c), 1i != -arg_3.x, all(select(vec4<bool>(arg_0.x, true, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, false, arg_0.x)))));
    var var_1 = -u_input.b.x;
    var var_2 = _wgslsmith_mult_vec4_u32(select(u_input.c, u_input.d, select(!vec4<bool>(arg_0.x, false, var_0.a, var_0.a), !vec4<bool>(true, false, true, arg_0.x), !(!vec4<bool>(true, true, var_0.a, false)))), _wgslsmith_mult_vec4_u32(abs(~u_input.d), ~u_input.c));
    let var_3 = ~_wgslsmith_dot_vec3_i32(firstLeadingBit(select(firstLeadingBit(vec3<i32>(arg_1.c, 1i, arg_1.c)), vec3<i32>(arg_3.x, 19391i, u_input.b.x), select(arg_0, arg_0, arg_0))), _wgslsmith_add_vec3_i32(arg_3, _wgslsmith_mult_vec3_i32(u_input.b.zzz, vec3<i32>(39748i, 42180i, arg_1.c))));
    let var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(max(arg_1.d.x, -433f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), true));
    return _wgslsmith_add_u32(~select(0u, u_input.a, arg_0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x | 0u, 4294967295u) >> (select(firstTrailingBit(vec2<u32>(57170u, u_input.e.x)), vec2<u32>(u_input.d.x, 52595u), var_0.a) % vec2<u32>(32u)), abs(min(var_2.zw, _wgslsmith_mult_vec2_u32(vec2<u32>(var_2.x, u_input.e.x), u_input.c.wz)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -681f;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), Struct_1(2054f, _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -11679i, -18096i), countOneBits(vec3<i32>(-1i, u_input.b.x, -1i))), u_input.b.x, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(270f, var_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-314f, var_0)), vec2<bool>(true, true)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-var_0), var_0, _wgslsmith_f_op_f32(select(var_0, -644f, true)), var_0), vec4<f32>(var_0, _wgslsmith_f_op_f32(2193f + var_0), var_0, -1272f))), u_input.b.ywy));
}

