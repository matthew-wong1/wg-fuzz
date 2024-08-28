struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: u32,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: vec2<i32>) -> vec4<bool> {
    global0 = 6598u >= firstLeadingBit(arg_1 ^ _wgslsmith_div_u32(arg_0.a.x, ~0u));
    let var_0 = !any(select(!(!vec4<bool>(arg_0.c.a.x, arg_0.d.c.a.x, true, true)), select(vec4<bool>(arg_0.c.a.x, arg_0.d.c.a.x, arg_0.d.b.a.x, true), select(vec4<bool>(true, arg_0.d.b.a.x, arg_0.c.a.x, true), vec4<bool>(false, true, arg_0.d.b.a.x, arg_0.b.a.a.x), true), !vec4<bool>(arg_0.b.b.a.x, false, true, arg_0.c.a.x)), _wgslsmith_clamp_u32(arg_0.a.x, arg_0.a.x, 31813u) != arg_0.a.x));
    global0 = true;
    global0 = all(select(select(!arg_0.c.a, vec3<bool>(true || var_0, arg_0.c.a.x, arg_0.b.d > arg_0.b.d), true), !(!vec3<bool>(var_0, false, false)), arg_0.c.a));
    let var_1 = 1f;
    return select(vec4<bool>((_wgslsmith_mod_u32(arg_1, 49662u) == arg_0.a.x) || true, false, all(arg_0.c.a.zy), select(any(vec3<bool>(arg_0.d.b.a.x, true, true)), !select(false, var_0, true), true)), select(!vec4<bool>(arg_0.a.x == 8637u, var_0, true, true), select(vec4<bool>(true, false, arg_1 > 18934u, !var_0), vec4<bool>(any(arg_0.c.a), var_0, false, var_0), arg_0.d.a.a.x), !(!vec4<bool>(arg_0.c.a.x, var_0, true, true))), vec4<bool>((arg_1 == 4294967295u) | true, true, true || any(!vec4<bool>(arg_0.b.b.a.x, true, var_0, var_0)), !((715f <= arg_0.d.d) || true)));
}

fn func_2(arg_0: vec2<i32>) -> vec4<u32> {
    global0 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-544f + -484f))) <= _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(2063f, -1205f), _wgslsmith_f_op_f32(round(-484f))))));
    global0 = false;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -358f)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(384f)) - 1f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f - -224f), _wgslsmith_f_op_f32(trunc(-1574f)), true)))));
    global0 = any(func_3(Struct_5(~vec3<u32>(55061u, 4294967295u, 10071u), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<i32>(42936i, 26804i, arg_0.x, u_input.b.x)), Struct_1(vec3<bool>(false, true, true), vec4<i32>(u_input.c, u_input.b.x, -2147483647i, 1910i)), Struct_1(vec3<bool>(false, true, false), vec4<i32>(u_input.c, arg_0.x, u_input.c, arg_0.x)), 1000f), Struct_1(vec3<bool>(true, true, true), vec4<i32>(u_input.c, -44940i, u_input.a, arg_0.x)), Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, 20368i)), Struct_1(vec3<bool>(false, true, false), vec4<i32>(arg_0.x, arg_0.x, 2147483647i, arg_0.x)), Struct_1(vec3<bool>(false, false, true), vec4<i32>(2147483647i, 25423i, arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(select(1000f, -1357f, true)))), ~24065u, arg_0 << (vec2<u32>(max(0u, 4294967295u), ~0u) % vec2<u32>(32u))));
    let var_0 = ((~1u >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 11184u), ~vec2<u32>(1u, 4294967295u)) % 32u)) >> (_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), countOneBits(vec3<u32>(58186u, 0u, 0u))), _wgslsmith_mult_u32(firstLeadingBit(0u), _wgslsmith_sub_u32(32607u, 8688u))) % 32u)) & ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, 0u)), vec2<u32>(1u, 26899u)), _wgslsmith_clamp_u32(0u, _wgslsmith_mult_u32(0u, 99733u), ~4294967295u));
    return _wgslsmith_mult_vec4_u32(vec4<u32>(var_0, _wgslsmith_dot_vec2_u32(firstTrailingBit(reverseBits(vec2<u32>(0u, var_0))), _wgslsmith_sub_vec2_u32(vec2<u32>(57666u, var_0), vec2<u32>(0u, var_0))), _wgslsmith_add_u32(_wgslsmith_div_u32(var_0, var_0), 4294967295u), abs(68565u << (var_0 % 32u)) << (~(~var_0) % 32u)), ~(_wgslsmith_div_vec4_u32(vec4<u32>(22547u, 4294967295u, 72634u, 4294967295u), abs(vec4<u32>(var_0, var_0, var_0, var_0))) >> (vec4<u32>(var_0, ~var_0, ~var_0, 0u) % vec4<u32>(32u))));
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: i32) -> vec4<u32> {
    return firstLeadingBit(~_wgslsmith_sub_vec4_u32(func_2(_wgslsmith_add_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(arg_2, arg_2))), vec4<u32>(4294967295u, select(15777u, 40215u, true), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 28979u, arg_1.c, arg_1.c), vec4<u32>(arg_1.c, arg_1.c, arg_1.c, 4294967295u)), countOneBits(1u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(vec2<i32>(-1i, ~(~u_input.a))) ^ vec2<i32>(-(~u_input.a), select(1i, u_input.a, true) | u_input.c);
    var_0 = u_input.b << (vec2<u32>(0u, ~firstTrailingBit(1u)) % vec2<u32>(32u));
    var var_1 = Struct_4(vec3<u32>(1u, ~reverseBits(1u), 1u));
    let var_2 = reverseBits(~(~func_1(u_input.b.x ^ u_input.c, Struct_3(-40427i, vec2<f32>(-730f, -301f), var_1.a.x), select(var_0.x, var_0.x, false))));
    let var_3 = Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<i32>(u_input.a, _wgslsmith_clamp_i32(var_0.x, 1i, 0i << (var_2.x % 32u)), firstTrailingBit(u_input.b.x), countOneBits(1i) | var_0.x)), Struct_1(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), vec4<i32>(-1i, countOneBits(var_0.x | 0i), 10044i, 2147483647i)), Struct_1(!(!func_3(Struct_5(var_1.a, Struct_2(Struct_1(vec3<bool>(false, false, true), vec4<i32>(u_input.b.x, -1i, -6259i, 0i)), Struct_1(vec3<bool>(true, false, false), vec4<i32>(var_0.x, 2147483647i, 41112i, -2147483647i)), Struct_1(vec3<bool>(false, false, true), vec4<i32>(-41749i, 46173i, 2147483647i, var_0.x)), 1000f), Struct_1(vec3<bool>(true, true, true), vec4<i32>(u_input.c, 34094i, 0i, u_input.c)), Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<i32>(31794i, -62558i, 1i, 1i)), Struct_1(vec3<bool>(false, true, false), vec4<i32>(0i, 39221i, u_input.a, -22119i)), Struct_1(vec3<bool>(true, false, false), vec4<i32>(-1i, 29191i, var_0.x, var_0.x)), -517f)), 45200u, vec2<i32>(u_input.a, -1i)).yxz), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.c, -2147483647i, 28489i), select(vec4<i32>(var_0.x, -2147483647i, var_0.x, -2147483647i), vec4<i32>(var_0.x, 1i, u_input.b.x, -82549i), vec4<bool>(false, false, false, false))), ~vec4<i32>(1i, u_input.b.x, -2147483647i, -2147483647i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-769f * 1683f))), 1f));
    let x = u_input.a;
    s_output = StorageBuffer(~func_1(-2601i, Struct_3(abs(1i), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_3.d, var_3.d), vec2<f32>(683f, var_3.d))), var_1.a.x), -32996i), _wgslsmith_clamp_i32(-u_input.a, 0i, _wgslsmith_dot_vec3_i32(firstLeadingBit(countOneBits(var_3.b.b.wzw)), var_3.a.b.zxx)), vec4<f32>(-179f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d)), var_3.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1623f, _wgslsmith_f_op_f32(-var_3.d)))), func_2((abs(vec2<i32>(var_3.b.b.x, var_3.c.b.x)) ^ var_3.c.b.yz) >> (func_2(~var_3.c.b.zy).yw % vec2<u32>(32u))).zxz);
}

