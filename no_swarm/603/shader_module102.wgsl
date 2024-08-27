struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: bool,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 5>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: i32) -> vec3<i32> {
    let var_0 = reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(select(u_input.b.x, 33264i, true), arg_0, min(-2147483647i, i32(-1i) * -2147483647i), _wgslsmith_add_i32(max(-11087i, 0i), 0i)), -_wgslsmith_mod_vec4_i32(vec4<i32>(-5923i, 39992i, u_input.b.x, 2147483647i), ~vec4<i32>(arg_0, u_input.b.x, -2147483647i, -32946i))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(199f))), ~_wgslsmith_mult_vec2_u32(u_input.a, ~u_input.a ^ u_input.a), false, _wgslsmith_mod_u32(select(~_wgslsmith_clamp_u32(u_input.a.x, 1u, u_input.a.x), (u_input.a.x & 32498u) >> (firstLeadingBit(4294967295u) % 32u), false), countOneBits(u_input.a.x)), var_0.yz);
    let var_2 = Struct_2(1000f, _wgslsmith_mult_vec2_u32(var_1.b, min(~vec2<u32>(1u, 28043u), u_input.a >> (var_1.b % vec2<u32>(32u)))), all(vec2<bool>(var_1.c | true, all(!vec2<bool>(var_1.c, false)))), countOneBits(u_input.a.x), var_1.e);
    global0 = array<vec3<u32>, 5>();
    let var_3 = Struct_1(-1000f, var_0.zww);
    return vec3<i32>(6778i, -20828i, firstTrailingBit(~1i));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> Struct_2 {
    global0 = array<vec3<u32>, 5>();
    var var_0 = ~u_input.a.x & 44645u;
    var_0 = ~93500u;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.a))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - _wgslsmith_f_op_f32(-129f * arg_0.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.a)))))), func_3(arg_0.b.x << (arg_1 % 32u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.a, var_1.a, arg_0.a))) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_2.a, 955f, arg_2.a), vec3<f32>(610f, var_1.a, arg_2.a)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2.a, arg_0.a, -2468f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, 1000f, arg_0.a) * vec3<f32>(var_1.a, -125f, arg_0.a)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-930f, arg_0.a, arg_2.a), vec3<f32>(arg_2.a, 174f, var_1.a))))))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1178f * -377f) - _wgslsmith_f_op_f32(-arg_2.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a))) - _wgslsmith_f_op_f32(floor(arg_2.a))), _wgslsmith_f_op_f32(f32(-1f) * -260f)));
    return Struct_2(453f, firstTrailingBit(vec2<u32>(select(4294967295u, 51460u, false) | 25912u, _wgslsmith_clamp_u32(12029u | arg_1, arg_1 >> (arg_1 % 32u), _wgslsmith_div_u32(0u, 4294967295u)))), true, _wgslsmith_sub_u32(~_wgslsmith_mult_u32(arg_1, arg_1), u_input.a.x), min(countOneBits(u_input.b << (u_input.a % vec2<u32>(32u))) | -u_input.b, u_input.b));
}

fn func_1() -> Struct_2 {
    global0 = array<vec3<u32>, 5>();
    var var_0 = Struct_2(-2452f, ~_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(56002u ^ u_input.a.x, reverseBits(66395u))), true, _wgslsmith_clamp_u32(u_input.a.x, 4294967295u, reverseBits(max(u_input.a.x, u_input.a.x) ^ u_input.a.x)), vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, 2147483647i, u_input.b.x), -vec3<i32>(u_input.b.x, u_input.b.x, -13328i)), ~0i) ^ vec2<i32>(1i, (u_input.b.x << (26928u % 32u)) << (u_input.a.x % 32u)));
    var var_1 = countOneBits(vec4<u32>(firstTrailingBit(var_0.b.x), var_0.d, ~1u, var_0.d));
    var var_2 = select(!vec2<bool>(!(!var_0.c), var_0.c), vec2<bool>(true, all(vec2<bool>(any(vec2<bool>(true, var_0.c)), select(false, var_0.c, true)))), !vec2<bool>(firstTrailingBit(var_0.e.x) != _wgslsmith_div_i32(u_input.b.x, -1i), true));
    let var_3 = func_2(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1777f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))), ~_wgslsmith_div_vec3_i32(~vec3<i32>(-15638i, 38879i, -46178i), abs(vec3<i32>(10261i, var_0.e.x, var_0.e.x)))), 21932u, Struct_1(var_0.a, abs(~(-vec3<i32>(u_input.b.x, -2147483647i, var_0.e.x)))));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 5>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1765f, _wgslsmith_f_op_f32(-600f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(836f * 743f), _wgslsmith_f_op_f32(-400f * 103f)))));
    let var_1 = func_1();
    let var_2 = false;
    let var_3 = vec3<i32>(_wgslsmith_mult_i32(min(u_input.b.x, 1i), var_1.e.x), ~2147483647i, countOneBits(var_1.e.x) | _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x)), i32(-1i) * -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.b.x ^ min(min(2147483647i, u_input.b.x), -2147483647i), -2147483647i, 26603i), vec3<f32>(_wgslsmith_f_op_f32(1030f + var_1.a), var_1.a, var_1.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(951f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a))), -964f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0))))), _wgslsmith_mult_i32(21773i, _wgslsmith_dot_vec3_i32(var_3, vec3<i32>(i32(-1i) * -32026i, -var_1.e.x, ~(-2147483647i)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.a, -2162f))) + _wgslsmith_f_op_f32(trunc(-1804f))), _wgslsmith_f_op_f32(f32(-1f) * -2188f), _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-929f, var_1.a))))), _wgslsmith_f_op_f32(f32(-1f) * -350f)));
}

