struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: vec2<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32) -> vec2<u32> {
    let var_0 = u_input.a;
    return _wgslsmith_mult_vec2_u32(~firstLeadingBit(~firstTrailingBit(vec2<u32>(4294967295u, 28956u))), ~vec2<u32>(1u, 1u));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> vec2<u32> {
    var var_0 = !arg_1.a.x;
    let var_1 = arg_1.c;
    let var_2 = arg_1;
    let var_3 = true;
    var_0 = true;
    return ~(~func_2(-39183i));
}

fn func_3(arg_0: vec3<bool>) -> bool {
    var var_0 = firstTrailingBit(_wgslsmith_mod_vec2_i32(abs(countOneBits(vec2<i32>(u_input.a, -2147483647i)) >> (vec2<u32>(8314u, 70775u) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_mult_i32(u_input.a << (4294967295u % 32u), -u_input.a), u_input.a)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -251f)) != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-245f, _wgslsmith_f_op_f32(922f - 270f), select(true, false, true)))))));
    var_0 = _wgslsmith_div_vec2_i32(~(~vec2<i32>(-var_0.x, u_input.a)), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, 22393i), vec2<i32>(10021i, 1i), vec2<i32>(u_input.a, 42718i)), -vec2<i32>(var_0.x, var_0.x)) & -vec2<i32>(var_0.x, 2147483647i), vec2<i32>(-49825i, _wgslsmith_mult_i32(~var_0.x, select(u_input.a, var_0.x, var_1)))));
    var var_2 = -156f;
    var_0 = _wgslsmith_sub_vec2_i32(~vec2<i32>(var_0.x, var_0.x), vec2<i32>(~select(var_0.x, 43083i, arg_0.x), firstLeadingBit(min(u_input.a, -22972i)))) | min(_wgslsmith_mod_vec2_i32(max(vec2<i32>(var_0.x, u_input.a), vec2<i32>(1i, 34737i)) | ~vec2<i32>(0i, var_0.x), ~vec2<i32>(u_input.a, -45453i)), ~vec2<i32>(0i & u_input.a, 0i));
    return arg_0.x;
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> bool {
    var var_0 = arg_0.c;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(~abs(~func_1(1u, Struct_1(vec2<bool>(true, true), vec2<bool>(true, true), 18569u), Struct_1(vec2<bool>(false, true), vec2<bool>(false, false), 9791u), vec4<f32>(1182f, -2729f, 279f, 775f))));
    var var_1 = false;
    var_1 = !(!func_4(Struct_2(firstTrailingBit(1u), firstTrailingBit(-44740i), Struct_1(vec2<bool>(true, true), vec2<bool>(true, false), var_0.x), vec2<bool>(true, true), true), func_3(vec3<bool>(true, true, false))));
    let var_2 = Struct_2(~_wgslsmith_clamp_u32(1u, ~4294967295u, 34025u), 1i, Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.a > 51632i), select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(false, true)), true), vec2<bool>(any(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true))), var_0.x), select(vec2<bool>(true, true), vec2<bool>(func_4(Struct_2(var_0.x, u_input.a, Struct_1(vec2<bool>(true, false), vec2<bool>(true, true), 14812u), vec2<bool>(false, false), true), all(vec2<bool>(true, false))), true), any(select(vec2<bool>(true, true), vec2<bool>(false, false), false))), false);
    var_1 = !(var_2.d.x && (4294967295u == ~_wgslsmith_add_u32(var_2.c.c, 0u)));
    var_1 = any(select(select(!(!vec4<bool>(false, false, var_2.c.b.x, true)), vec4<bool>(var_0.x != 22507u, false, true, var_2.e | true), !select(vec4<bool>(true, var_2.c.a.x, var_2.c.b.x, var_2.c.a.x), vec4<bool>(true, false, true, false), vec4<bool>(var_2.d.x, false, var_2.e, false))), vec4<bool>(var_2.c.b.x, -87800i <= u_input.a, (i32(-1i) * -1i) >= u_input.a, !var_2.d.x), vec4<bool>(var_2.e, !(!var_2.d.x), all(vec2<bool>(false, var_2.e)), all(vec2<bool>(var_2.c.b.x, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(-794f, max(-u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(-2147483647i, u_input.a), u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, u_input.a), vec3<i32>(-9854i, 55833i, 0i))), vec3<i32>(u_input.a, _wgslsmith_div_i32(u_input.a, u_input.a), -2147483647i | u_input.a))));
}

