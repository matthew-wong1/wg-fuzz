struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<i32>;

var<private> global2: bool = true;

var<private> global3: array<Struct_4, 10>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: Struct_4) -> vec2<u32> {
    return _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32((_wgslsmith_add_vec2_u32(u_input.c, u_input.c) | u_input.c) ^ u_input.c, u_input.c), u_input.c);
}

fn func_2() -> Struct_2 {
    global2 = false;
    var var_0 = min(u_input.c, func_3((_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, u_input.c.x)) >> (~37821u % 32u)) ^ max(u_input.c.x, u_input.c.x), Struct_4(_wgslsmith_mod_vec3_i32(vec3<i32>(-41941i, 28361i, 0i), ~vec3<i32>(u_input.a, u_input.d, u_input.d)), -451f)));
    var var_1 = -min(vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(vec2<i32>(global1.x, u_input.e.x), u_input.e), vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(u_input.b.x, 0i)));
    var_0 = vec2<u32>(~(~_wgslsmith_add_u32(~var_0.x, 1u)), _wgslsmith_add_u32(abs(~1u), _wgslsmith_add_u32(~_wgslsmith_mult_u32(var_0.x, u_input.c.x), _wgslsmith_add_u32(0u, 566u))));
    let var_2 = Struct_3(false || any(vec3<bool>(true, true, true)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-462f, _wgslsmith_f_op_f32(select(881f, 873f, false)))))), vec4<u32>(u_input.c.x, ~u_input.c.x, firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), ~1u)), var_0.x), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-2055f - -106f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-307f)) * _wgslsmith_f_op_f32(-2128f + 2114f)), _wgslsmith_f_op_f32(1241f * 1530f)), -959f, _wgslsmith_add_i32(~max(1i, 1i), ~1i), all(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    return Struct_2(-463f);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>) -> bool {
    let var_0 = Struct_2(-2545f);
    var var_1 = -23810i;
    var var_2 = arg_1.x;
    return arg_1.x;
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: i32) -> u32 {
    global2 = !(!func_4(func_2(), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(vec2<bool>(false, true), vec2<bool>(true, false), true))));
    global3 = array<Struct_4, 10>();
    var var_0 = ~(vec4<u32>(u_input.c.x, 0u >> ((u_input.c.x & 59357u) % 32u), u_input.c.x, countOneBits(~u_input.c.x)) << (abs(~vec4<u32>(u_input.c.x, 10364u, u_input.c.x, 23193u)) % vec4<u32>(32u)));
    global1 = vec4<i32>(~((arg_2 ^ 0i) << (8795u % 32u)), 41731i, arg_1.x, global1.x);
    global3 = array<Struct_4, 10>();
    return ~(~0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(131f)), _wgslsmith_f_op_f32(-326f - 1378f), true))))));
    let var_1 = u_input.b;
    global2 = true;
    global3 = array<Struct_4, 10>();
    let var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(0u, 53847u, u_input.c.x, 0u))), 20314u, ~func_1(var_0.a, vec4<i32>(global1.x, 2147483647i, global1.x, 72341i), 40517i) >> (countOneBits(_wgslsmith_div_u32(u_input.c.x, u_input.c.x)) % 32u), ~func_1(_wgslsmith_f_op_f32(var_0.a * 1000f), vec4<i32>(var_1.x, -2147483647i, u_input.a, -19508i) & vec4<i32>(15172i, 23979i, 2147483647i, global1.x), var_1.x)), _wgslsmith_mult_vec4_u32(~(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u) << (~vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x) % vec4<u32>(32u))), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(12072u, 22231u, 1u, u_input.c.x), vec4<u32>(39773u, 1u, u_input.c.x, 80058u)))), ~_wgslsmith_div_vec4_u32(abs(vec4<u32>(48043u, u_input.c.x, 8128u, u_input.c.x) >> (vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x) % vec4<u32>(32u))), ~max(vec4<u32>(41524u, 4294967295u, 11772u, u_input.c.x), vec4<u32>(44490u, 16950u, u_input.c.x, u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(1u) | 58170u, abs(var_2.x));
}

