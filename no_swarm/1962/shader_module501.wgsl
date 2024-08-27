struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 4>;

var<private> global1: bool;

var<private> global2: f32;

var<private> global3: array<Struct_2, 10>;

var<private> global4: i32;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> vec2<i32> {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1795f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1263f * _wgslsmith_div_f32(-1749f, -561f))))));
    global2 = 601f;
    var var_0 = !vec4<bool>(false, true, select(true, 1u > arg_0.x, !any(vec3<bool>(false, true, true))), true);
    global1 = true;
    global2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(878f, 1253f, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -204f), var_0.x)))))));
    return vec2<i32>(-1i) * -(vec2<i32>(u_input.b, u_input.b) ^ ~vec2<i32>(u_input.b, u_input.b));
}

fn func_2() -> Struct_4 {
    global0 = array<vec4<bool>, 4>();
    var var_0 = Struct_3(Struct_1(select(~(~u_input.c.xx), vec2<u32>(u_input.a.x & 40513u, 7916u), vec2<bool>(true, true)), 30426u, func_3(vec4<u32>(~193u, _wgslsmith_add_u32(22039u, u_input.c.x), 39013u, u_input.c.x)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(min(vec3<i32>(2147483647i, -27354i, u_input.b), vec3<i32>(15183i, u_input.b, u_input.b)), countOneBits(vec3<i32>(u_input.b, u_input.b, u_input.b))), ~countOneBits(vec3<i32>(u_input.b, u_input.b, 51173i))), vec2<u32>(u_input.d.x, ~8852u)), Struct_1(u_input.c.zz, ~u_input.c.x, ~vec2<i32>(-2147483647i, u_input.b), 1i, ~u_input.d));
    var var_1 = Struct_4(Struct_2(u_input.a, var_0.a, ~vec3<u32>(~0u, _wgslsmith_mod_u32(u_input.c.x, 8620u), ~var_0.a.a.x), var_0.b), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(711f, 358f, -411f, -3335f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1094f, 1750f, 790f, 1131f) + vec4<f32>(-916f, 1022f, -1000f, 1587f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-632f, 1291f, 185f, -119f)) * _wgslsmith_div_vec4_f32(vec4<f32>(796f, 684f, -1000f, -1011f), vec4<f32>(1657f, -287f, 341f, 1211f)))), false)), !(((var_0.b.b < var_0.a.b) || any(vec2<bool>(false, false))) & (-var_0.a.c.x <= 0i)));
    global2 = var_1.b.x;
    var var_2 = var_1.a;
    return Struct_4(Struct_2(var_1.a.a, Struct_1(~var_0.b.e, var_2.a.x, var_0.b.c, 22406i, _wgslsmith_mult_vec2_u32(u_input.c.yy, _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 1u), var_2.a.xx))), ~(~vec3<u32>(0u, var_2.b.b, 23055u)), var_0.a), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.b * _wgslsmith_f_op_vec4_f32(exp2(var_1.b))) - var_1.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, 1877f, 2080f, -1215f) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.b.x, -1222f, var_1.b.x, var_1.b.x)))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.b.x, 1104f, 588f, 1755f)))), var_1.c)), all(select(global0[_wgslsmith_index_u32(abs(var_1.a.a.x) | u_input.c.x, 4u)], vec4<bool>(var_1.c, true, false, all(vec2<bool>(var_1.c, var_1.c))), vec4<bool>(!var_1.c, all(vec3<bool>(var_1.c, true, var_1.c)), any(vec2<bool>(var_1.c, true)), var_1.c))));
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: Struct_2, arg_3: vec3<bool>) -> f32 {
    global0 = array<vec4<bool>, 4>();
    global0 = array<vec4<bool>, 4>();
    global2 = 1000f;
    global2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-366f)) * _wgslsmith_f_op_f32(937f + -192f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(897f, 641f)), arg_0.b.x))))), arg_0.b.x, all(!select(select(global0[_wgslsmith_index_u32(arg_2.c.x, 4u)], global0[_wgslsmith_index_u32(5119u, 4u)], false), global0[_wgslsmith_index_u32(firstTrailingBit(1u), 4u)], global0[_wgslsmith_index_u32(arg_0.a.a.x, 4u)]))));
    return arg_0.b.x;
}

fn func_1() -> u32 {
    global0 = array<vec4<bool>, 4>();
    var var_0 = true;
    var var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(78949u, u_input.d.x, 4294967295u, u_input.a.x ^ ~_wgslsmith_sub_u32(1u, u_input.d.x)), ~select(_wgslsmith_clamp_vec4_u32(max(vec4<u32>(34949u, u_input.a.x, 86792u, u_input.d.x), vec4<u32>(u_input.d.x, u_input.a.x, u_input.d.x, 16701u)), select(vec4<u32>(u_input.d.x, u_input.c.x, 1u, 1u), vec4<u32>(859u, u_input.a.x, 76270u, 26359u), global0[_wgslsmith_index_u32(u_input.c.x, 4u)]), vec4<u32>(4294967295u, u_input.a.x, u_input.c.x, 122825u)), vec4<u32>(1u, u_input.c.x, 49933u, u_input.d.x) | select(vec4<u32>(u_input.c.x, 0u, u_input.d.x, u_input.a.x), vec4<u32>(84433u, 4294967295u, u_input.a.x, 11660u), true), true));
    global2 = _wgslsmith_f_op_f32(func_4(func_2(), -u_input.b, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(4294967295u, var_1.x)) & ~(vec2<u32>(4294967295u, 10372u) & var_1.wz), var_1.wy), 10u)], select(vec3<bool>(!all(vec3<bool>(true, true, false)), false, true), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true)), select(vec3<bool>(all(vec4<bool>(true, true, false, false)), true, true), vec3<bool>(true, true, true), true))));
    global1 = reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 0u, var_1.x, var_1.x), vec4<u32>(var_1.x, 64734u, 0u, 8539u)) & select(~var_1.x, _wgslsmith_add_u32(8246u, 0u), true)) > 4294967295u;
    return reverseBits(~func_2().a.b.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec2_u32(~select(vec2<u32>(u_input.c.x, ~48256u), _wgslsmith_mult_vec2_u32(u_input.a.yx, u_input.a.yy), vec2<bool>(true, true)), _wgslsmith_clamp_vec2_u32(~u_input.c.xz, vec2<u32>(~u_input.a.x, u_input.c.x << (u_input.c.x % 32u)) & u_input.c.xz, ~u_input.d), ~vec2<u32>(u_input.a.x, ~func_1()));
    global3 = array<Struct_2, 10>();
    var var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_2().b - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(492f, 418f, 177f, 177f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-557f, 205f, -1971f, -621f)), vec4<f32>(954f, 291f, -883f, 402f)))), true)));
    global0 = array<vec4<bool>, 4>();
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.x))) >= _wgslsmith_f_op_f32(-var_2.x);
    var var_4 = abs(u_input.b) << ((1u | ~u_input.d.x) % 32u);
    global4 = u_input.b;
    let var_5 = max(u_input.b, _wgslsmith_div_i32(func_2().a.b.c.x, _wgslsmith_div_i32(-2147483647i << (var_0.x % 32u), -u_input.b)) & reverseBits(1i));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.yzy);
}

