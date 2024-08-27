struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10> = array<u32, 10>(4294967295u, 2842u, 41141u, 13773u, 0u, 117785u, 4294967295u, 1u, 5765u, 64547u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> vec2<u32> {
    global0 = array<u32, 10>();
    let var_0 = Struct_2(vec2<bool>(false, true), global0[_wgslsmith_index_u32(~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 0u, 0u, 49407u), vec4<u32>(0u, u_input.d.x, 31977u, u_input.c)))), 10u)], Struct_1(~firstLeadingBit(~(-2147483647i)), ~vec4<u32>(u_input.d.x, 35288u, 1u, ~4294967295u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-864f, _wgslsmith_div_f32(947f, -1000f))))), ~countOneBits(~u_input.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-159f, 2307f) + vec2<f32>(671f, -445f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1454f, -244f), vec2<f32>(2136f, 242f), true))))), Struct_1(2147483647i, _wgslsmith_div_vec4_u32(u_input.d, (u_input.d << (u_input.d % vec4<u32>(32u))) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(89205u, 29346u, 1u, u_input.d.x), vec4<u32>(u_input.c, 8668u, global0[_wgslsmith_index_u32(u_input.d.x, 10u)], 52321u), u_input.d) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-701f - 1f), u_input.d, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-702f, 1000f))))))), 42188u);
    return ~(~(~u_input.d.zy));
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> vec2<bool> {
    let var_0 = func_3(u_input.a, vec3<i32>(5299i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, u_input.a, -16193i), vec3<i32>(u_input.a, u_input.b, 1i)), ~vec3<i32>(u_input.a, -1i, -49593i)), vec3<i32>(~12613i, 0i, -u_input.b)), u_input.a));
    var var_1 = -1i;
    var var_2 = ~vec2<i32>(countOneBits(~firstLeadingBit(15629i)), max(u_input.a, max(~2147483647i, ~30029i)));
    var_1 = -30970i;
    var var_3 = Struct_1(i32(-1i) * -18841i, u_input.d, 1f, ~(~vec4<u32>(80801u, 0u, var_0.x, arg_1.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-656f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(115f, -786f)), _wgslsmith_f_op_f32(step(1160f, 706f))))));
    return select(!(!select(select(vec2<bool>(false, arg_0), vec2<bool>(false, arg_0), arg_0), vec2<bool>(false, true), any(vec4<bool>(arg_0, true, arg_0, arg_0)))), !vec2<bool>(true, 1u == max(global0[_wgslsmith_index_u32(4294967295u, 10u)], 19540u)), vec2<bool>(false, all(select(select(vec3<bool>(true, false, false), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, arg_0, false)), select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, true, true), vec3<bool>(false, arg_0, false)), any(vec2<bool>(arg_0, arg_0))))));
}

fn func_1() -> StorageBuffer {
    let var_0 = u_input.d.x | 1u;
    var var_1 = Struct_2(!(!func_2(true, firstLeadingBit(vec3<u32>(65862u, 26553u, 21449u)))), 1u, Struct_1(-u_input.b, abs(~u_input.d) >> (_wgslsmith_div_vec4_u32(countOneBits(u_input.d), ~vec4<u32>(u_input.c, 4294967295u, 42720u, var_0)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -984f))))), u_input.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-922f, -846f))))), Struct_1(~(~u_input.b), ~(~min(vec4<u32>(global0[_wgslsmith_index_u32(var_0, 10u)], global0[_wgslsmith_index_u32(u_input.c, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8289u, 10u)], 10u)], var_0), u_input.d)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1638f, 1708f))))), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.d.yxw, u_input.d.zyy) & global0[_wgslsmith_index_u32(1u, 10u)], _wgslsmith_mod_u32(~1u, u_input.c >> (12244u % 32u)), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0, 10u)], 10u)], var_0), vec2<f32>(1f, 1f)), _wgslsmith_sub_u32(4294967295u, countOneBits(_wgslsmith_mod_u32(2678u, ~var_0))));
    var_1 = Struct_2(var_1.a, countOneBits(3839u) ^ ((1u ^ (global0[_wgslsmith_index_u32(u_input.d.x, 10u)] ^ 0u)) | firstTrailingBit(16556u)), Struct_1(~var_1.d.a, vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(16833u, 19711u), var_1.b), ~u_input.d.x, ~var_0, func_3(_wgslsmith_div_i32(33332i, -1i), -vec3<i32>(u_input.b, u_input.b, u_input.b)).x), var_1.d.c, max(abs(u_input.d >> (var_1.c.b % vec4<u32>(32u))), vec4<u32>(1u, 61577u, select(var_1.c.b.x, var_0, var_1.a.x), u_input.c ^ var_1.e)), var_1.c.e), var_1.d, _wgslsmith_clamp_u32(~u_input.c, 40793u, 62008u));
    var_1 = Struct_2(!(!vec2<bool>(true, var_1.a.x | true)), var_0, Struct_1(min(reverseBits(u_input.a), _wgslsmith_add_i32(u_input.a, var_1.c.a) | _wgslsmith_div_i32(2147483647i, var_1.c.a)), u_input.d, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_1.c.c)))), var_1.d.c, any(!vec4<bool>(var_1.a.x, var_1.a.x, false, false)))), select(countOneBits(_wgslsmith_mod_vec4_u32(u_input.d, var_1.c.b)), ~(~u_input.d), select(!vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, true), vec4<bool>(var_1.a.x, false, true, var_1.a.x), global0[_wgslsmith_index_u32(88401u, 10u)] != 0u)), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1722f - 1518f), _wgslsmith_f_op_f32(floor(616f)))), -1282f)), Struct_1(~var_1.d.a, ~vec4<u32>(0u, firstLeadingBit(global0[_wgslsmith_index_u32(99125u, 10u)]), max(0u, var_0), ~39905u), -591f, u_input.d, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1081f, var_1.d.e.x))))), var_1.c.e))), u_input.d.x);
    var_1 = Struct_2(var_1.a, firstTrailingBit(1u), var_1.d, Struct_1(min(-33949i, firstLeadingBit(~9420i)), ~_wgslsmith_div_vec4_u32(~vec4<u32>(85647u, 4294967295u, 1u, var_0), ~vec4<u32>(u_input.d.x, 28681u, var_1.b, var_1.e)), 279f, u_input.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_1.c.e))))), select(~49814u, var_1.b, all(var_1.a)));
    return StorageBuffer(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(23963u, 10u)], 46489u, var_0), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.d.e.x, -378f, var_1.c.e.x))), 34105u, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.c)), _wgslsmith_f_op_f32(var_1.d.e.x - _wgslsmith_f_op_f32(f32(-1f) * -387f)), 2024f, _wgslsmith_f_op_f32(step(var_1.c.c, var_1.c.e.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

