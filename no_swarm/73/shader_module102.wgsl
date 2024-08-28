struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_2,
    d: i32,
    e: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11>;

var<private> global1: f32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> vec3<u32> {
    global1 = 444f;
    global1 = -520f;
    var var_0 = Struct_1(arg_0, vec4<u32>(_wgslsmith_mult_u32(arg_1, arg_1), 34547u, arg_1, min(~arg_1, 4294967295u)) & ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1, arg_1, arg_1, 4294967295u), vec4<u32>(0u, 47831u, 43856u, arg_1), vec4<u32>(arg_1, arg_1, 48695u, 1u))));
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(-23587i, reverseBits(~min(u_input.a.x, -32166i)), _wgslsmith_div_i32(u_input.a.x, -1i), u_input.a.x), reverseBits(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, 26657i, u_input.a.x), ~vec4<i32>(1i, 35509i, u_input.a.x, 0i))));
    var var_2 = Struct_1(vec3<bool>(arg_0.x, false, any(vec4<bool>(var_0.b.x != arg_1, true, true == arg_0.x, all(arg_0.yx)))), vec4<u32>(~arg_1, _wgslsmith_sub_u32(0u, abs(arg_1) | (55849u >> (var_0.b.x % 32u))), select(~(~9971u), abs(_wgslsmith_mult_u32(var_0.b.x, var_0.b.x)), false), 0u));
    return ~_wgslsmith_mod_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b.x, 76365u, var_0.b.x), vec3<u32>(var_0.b.x, var_0.b.x, 11850u)), vec3<u32>(~1u, abs(var_0.b.x), 5982u));
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    global0 = array<f32, 11>();
    var var_0 = _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(func_3(vec3<bool>(true, true, true), select(1u, 4294967295u, true)), vec3<u32>(1u, 1u, 1u)), _wgslsmith_mult_u32(4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 33428u), vec3<u32>(0u, 7567u, 111401u)) & ~max(90545u, 1u)));
    let var_1 = func_3(!select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), false), ~0u).x;
    var var_2 = vec2<u32>(4294967295u & (35240u & (var_1 ^ 0u)), 21686u);
    let var_3 = Struct_2(max(var_2.x, countOneBits(var_1)), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1374f * _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(var_1, 11u)]))))), global0[_wgslsmith_index_u32(reverseBits(1u), 11u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.x, var_1, var_2.x), vec4<u32>(33467u, var_2.x, var_1, 15355u)), 11u)] + global0[_wgslsmith_index_u32(var_2.x, 11u)]), global0[_wgslsmith_index_u32(~((4294967295u >> (1u % 32u)) ^ ~var_2.x), 11u)]), true);
    return 4294967295u;
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> Struct_1 {
    global0 = array<f32, 11>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1056f), -360f)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(1u, 11u)])));
    global0 = array<f32, 11>();
    let var_2 = var_0;
    return Struct_1(vec3<bool>(func_2(u_input.a) < 1u, true, !select(true, arg_0 < u_input.a.x, true)), vec4<u32>(1u, 1u, 1u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, countOneBits(1u)), 11u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 11u)]));
    var var_1 = func_1(~max(-2147483647i, ~1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(208f, 1514f, global0[_wgslsmith_index_u32(19419u, 11u)], 1000f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1356f, -420f, global0[_wgslsmith_index_u32(14670u, 11u)], global0[_wgslsmith_index_u32(10702u, 11u)]) - vec4<f32>(var_0.x, var_0.x, 1137f, 662f))) - vec4<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)]), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(4294967295u, 11u)])), 665f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 11u)])))));
    let var_2 = !var_1.a.x;
    let var_3 = Struct_3(var_1.b.xy, func_1(u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-405f, -328f, global0[_wgslsmith_index_u32(var_1.b.x, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)]))))), Struct_2(reverseBits(var_1.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -481f), _wgslsmith_f_op_f32(1031f * 1000f), _wgslsmith_f_op_f32(var_0.x + global0[_wgslsmith_index_u32(var_1.b.x, 11u)]), _wgslsmith_f_op_f32(f32(-1f) * -199f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-978f, global0[_wgslsmith_index_u32(var_1.b.x, 11u)], -550f, -477f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-794f, -397f, -1349f, var_0.x), vec4<f32>(global0[_wgslsmith_index_u32(var_1.b.x, 11u)], 711f, global0[_wgslsmith_index_u32(var_1.b.x, 11u)], 764f))), select(vec4<bool>(true, false, var_1.a.x, var_2), vec4<bool>(true, var_2, var_1.a.x, false), vec4<bool>(var_1.a.x, true, var_1.a.x, var_2))))), !var_2 & !var_2), 16834i, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(select(var_0.x, 1139f, any(var_1.a.zz))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(1u), var_1.b.x), 11u)], _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(0u, 11u)]))))));
    global0 = array<f32, 11>();
    let var_4 = ~abs(76987u);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~var_4, ~21912u) | reverseBits(~_wgslsmith_div_vec2_u32(vec2<u32>(42088u, var_1.b.x), var_1.b.yx)), _wgslsmith_sub_vec2_u32(vec2<u32>(0u | var_4, 3808u), var_1.b.yy) << (~_wgslsmith_mult_vec2_u32(~var_1.b.zx, ~var_3.b.b.xy) % vec2<u32>(32u)), (var_4 << (var_4 % 32u)) >> (4294967295u % 32u), max(_wgslsmith_add_u32(var_1.b.x, var_4), 4294967295u), abs(func_1(u_input.a.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 943f, global0[_wgslsmith_index_u32(var_3.c.a, 11u)], -1000f) - vec4<f32>(global0[_wgslsmith_index_u32(var_3.c.a, 11u)], 351f, 285f, var_0.x))).b.zw) | _wgslsmith_div_vec2_u32(abs(vec2<u32>(var_4, var_4)), max(vec2<u32>(var_1.b.x, 0u) & vec2<u32>(var_4, var_3.c.a), ~var_1.b.yx)));
}

