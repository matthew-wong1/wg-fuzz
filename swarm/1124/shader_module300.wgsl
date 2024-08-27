struct Struct_1 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 22685i;

var<private> global1: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(9804u, 11942u), vec2<u32>(0u, 59929u), vec2<u32>(17627u, 4294967295u), vec2<u32>(51316u, 91560u), vec2<u32>(68366u, 0u), vec2<u32>(6141u, 0u), vec2<u32>(72694u, 7628u), vec2<u32>(89974u, 0u), vec2<u32>(4294967295u, 1733u), vec2<u32>(0u, 0u), vec2<u32>(23438u, 27708u), vec2<u32>(52447u, 22285u), vec2<u32>(0u, 62598u), vec2<u32>(50388u, 0u), vec2<u32>(53605u, 33899u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(75860u, 1u), vec2<u32>(42282u, 0u), vec2<u32>(1u, 7112u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(43975u, 0u), vec2<u32>(1u, 34782u), vec2<u32>(1u, 42026u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(15156u, 4294967295u), vec2<u32>(40572u, 1u), vec2<u32>(16991u, 1u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 17827u), vec2<u32>(4294967295u, 0u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<f32>) -> vec4<bool> {
    var var_0 = arg_0;
    let var_1 = -max(-firstTrailingBit(vec4<i32>(-1i, -38682i, u_input.a.x, u_input.a.x)), ~_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(21608i, u_input.a.x, u_input.a.x, -49217i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(29646i, -85886i, -13852i, u_input.a.x))));
    var var_2 = select(abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 11541u, u_input.b, u_input.b), vec4<u32>(u_input.b, 18039u, 37383u, u_input.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.c, u_input.c, u_input.b), vec4<u32>(u_input.b, u_input.c, u_input.b, u_input.b)), select(vec4<u32>(72251u, 1u, 0u, u_input.b), vec4<u32>(17725u, u_input.b, 0u, 36112u), true))) ^ vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 1u, u_input.b), ~vec3<u32>(u_input.c, u_input.c, u_input.c)), _wgslsmith_div_u32(u_input.b, 0u), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.b, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, 0u), vec4<u32>(59204u, 4294967295u, 4294967295u, 15428u)), firstLeadingBit(vec4<u32>(u_input.b, 13284u, 60816u, 5077u))), _wgslsmith_sub_u32(u_input.c, u_input.b) << (108195u % 32u)), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.b, ~u_input.c, u_input.c, min(20471u, u_input.b))), select(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, 4294967295u, u_input.c, u_input.c), vec4<u32>(u_input.b, u_input.c, 40877u, 0u) >> (vec4<u32>(u_input.b, u_input.c, 18025u, u_input.b) % vec4<u32>(32u))), firstLeadingBit(vec4<u32>(1u, u_input.b, u_input.b, 1u)), 24810u <= (u_input.c | 84007u)), ~abs(vec4<u32>(65612u, 1u, 63088u, u_input.b)) & vec4<u32>(u_input.b, 53408u, u_input.b & 1u, u_input.c)), false);
    global0 = 2147483647i;
    var var_3 = reverseBits(-21636i);
    return select(vec4<bool>(true == all(vec4<bool>(false, true, false, false)), all(select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true))), true, true), vec4<bool>(5914u >= ((15154u << (var_2.x % 32u)) << (u_input.c % 32u)), !((i32(-1i) * -33886i) <= firstLeadingBit(var_1.x)), true, !((65473u ^ u_input.c) >= ~u_input.c)), select(vec4<bool>(!(u_input.b < 4294967295u), true, false, (var_2.x != u_input.c) | true), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec4<bool>(true, true, false, true)), true, false, all(vec3<bool>(false, false, false)))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = 42830i;
    global0 = ~select(1i, u_input.a.x ^ firstTrailingBit(max(u_input.a.x, 1i)), true);
    var var_1 = func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0)));
    let var_2 = vec2<i32>(-1i) * -(~vec2<i32>(countOneBits(-1i), ~1i));
    let var_3 = Struct_1(60513u, firstLeadingBit((u_input.c | arg_1.b) & _wgslsmith_div_u32(u_input.c, ~1u)));
    return arg_1;
}

fn func_1() -> Struct_1 {
    global1 = array<vec2<u32>, 32>();
    let var_0 = Struct_1(_wgslsmith_mod_u32(select(u_input.b, ~(~1u), true), _wgslsmith_mult_u32(25893u, _wgslsmith_mult_u32(~4294967295u, firstTrailingBit(0u)))), 39630u);
    return func_2(vec3<f32>(-671f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1445f))))), 1000f), Struct_1(~62331u, ~0u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 32>();
    var var_0 = -830f;
    global1 = array<vec2<u32>, 32>();
    let var_1 = func_1();
    var var_2 = vec3<f32>(373f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(832f, -1642f)), 1428f);
    let var_3 = _wgslsmith_mult_u32(var_1.b, _wgslsmith_div_u32(~20522u, abs(firstLeadingBit(1u))));
    var var_4 = var_1;
    var var_5 = Struct_1(abs(var_4.a), var_4.a);
    var var_6 = _wgslsmith_mult_i32(abs(-317i << (_wgslsmith_mod_u32(1u, var_5.a) % 32u)), ~(~firstTrailingBit(0i) >> (85517u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(577f, 85300u);
}

