struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: f32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 5>;

var<private> global1: vec4<i32>;

var<private> global2: array<i32, 24> = array<i32, 24>(2147483647i, 1i, -2474i, 0i, 2147483647i, 12647i, 29874i, 1i, 2147483647i, -38315i, 34716i, 2147483647i, i32(-2147483648), 2147483647i, 346i, -40649i, i32(-2147483648), 0i, 8400i, 0i, 1i, -29380i, i32(-2147483648), -1i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> f32 {
    var var_0 = -8466i;
    var var_1 = ~(-(~u_input.b.x));
    global1 = u_input.b;
    global0 = array<vec3<bool>, 5>();
    let var_2 = 37301i;
    return _wgslsmith_f_op_f32(min(-1706f, _wgslsmith_f_op_f32(-825f * _wgslsmith_f_op_f32(f32(-1f) * -1214f))));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> u32 {
    global0 = array<vec3<bool>, 5>();
    global2 = array<i32, 24>();
    global0 = array<vec3<bool>, 5>();
    global1 = u_input.b;
    global0 = array<vec3<bool>, 5>();
    return abs(arg_2.e.x);
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1278f * 523f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.a, -132f)), _wgslsmith_div_f32(arg_3.a, _wgslsmith_f_op_f32(-arg_2))))), !var_0.b, var_0.a, ~max(firstLeadingBit(u_input.c), var_0.d), abs(vec2<u32>(_wgslsmith_clamp_u32(41553u, 56251u, 0u) | (arg_3.d.x | arg_3.d.x), arg_3.e.x)));
    var_1 = arg_3;
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(arg_2 + var_1.c))), _wgslsmith_f_op_f32(ceil(-1000f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), select(vec3<bool>(var_0.b.x == false, false, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(u_input.e, 24u)], 0i) != 1i), !arg_3.b, !(!arg_3.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -800f)), vec3<u32>(arg_3.e.x, ~func_3(true, u_input.a.x, Struct_1(arg_1, var_0.b, 865f, arg_3.d, vec2<u32>(u_input.e, 1u))), 0u), firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, ~0u), _wgslsmith_sub_vec2_u32(~u_input.a, arg_3.e))));
    global1 = ~select(max(-u_input.b, -abs(u_input.b)), u_input.b, select(vec4<bool>(!arg_3.b.x, false | arg_3.b.x, any(vec2<bool>(false, var_0.b.x)), !var_1.b.x), vec4<bool>(select(var_1.b.x, true, true), true, !var_0.b.x, var_0.b.x), vec4<bool>(var_1.b.x & var_0.b.x, false || var_1.b.x, var_0.b.x, select(false, arg_3.b.x, arg_3.b.x))));
    return arg_3;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global1 = vec4<i32>(u_input.d.x, ~44802i, ~(-2147483647i), global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_add_u32(arg_3.d.x, ~(~arg_0.d.x))), 24u)]);
    let var_0 = ~u_input.c;
    var var_1 = abs(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(select(vec4<u32>(13372u, 70908u, var_0.x, u_input.a.x), vec4<u32>(60037u, arg_3.e.x, 4294967295u, arg_0.d.x), arg_2.b.x), vec4<u32>(4294967295u, arg_2.d.x, 29140u, arg_2.e.x) & vec4<u32>(41004u, 1u, arg_3.d.x, u_input.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.e.x, arg_0.d.x, var_0.x, u_input.e), vec4<u32>(1u, arg_2.d.x, arg_3.d.x, 48871u))), ~abs(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_0.x, var_0.x, u_input.a.x), vec4<u32>(0u, var_0.x, 4294967295u, 4294967295u)))));
    global1 = u_input.b;
    var var_2 = arg_3;
    return arg_3.a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> Struct_1 {
    let var_0 = func_1(~countOneBits(arg_0.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -1070f), arg_0);
    global0 = array<vec3<bool>, 5>();
    var var_1 = Struct_1(-538f, arg_1.b, -1014f, max(~(arg_0.d >> (arg_1.d % vec3<u32>(32u))), u_input.c) | u_input.c, ~(~(~var_0.d.zx)));
    var var_2 = !vec4<bool>(u_input.c.x > (_wgslsmith_div_u32(var_0.d.x, 4984u) ^ var_0.d.x), false, var_0.b.x, arg_0.a < 1236f);
    var_1 = arg_1;
    return func_1(arg_1.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a), 1000f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-285f + -319f), arg_1.c)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -939f), arg_1.a), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1555f * _wgslsmith_div_f32(-1342f, -357f))), vec3<bool>(false, select(var_0.b.x, var_0.b.x, var_2.x) & all(arg_0.b.yx), var_2.x && true), _wgslsmith_f_op_f32(-func_1(_wgslsmith_mod_u32(4294967295u, arg_1.d.x), _wgslsmith_f_op_f32(arg_2 - -292f), _wgslsmith_f_op_f32(func_4(Struct_1(var_1.a, arg_1.b, arg_2, var_0.d, arg_0.d.yx), false, arg_1, arg_0)), func_1(var_1.d.x, 819f, arg_1.c, Struct_1(arg_2, vec3<bool>(arg_0.b.x, var_2.x, false), -922f, vec3<u32>(12947u, u_input.e, 1u), vec2<u32>(var_0.d.x, arg_0.d.x)))).a), vec3<u32>(reverseBits(arg_0.d.x >> (var_1.d.x % 32u)), (0u ^ var_0.d.x) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.e.x, arg_0.d.x, 4294967295u, arg_1.d.x), vec4<u32>(var_1.e.x, u_input.e, 48466u, u_input.c.x)), select(3399u, u_input.c.x, var_1.b.x) >> (func_3(var_1.b.x, 4294967295u, Struct_1(-1234f, var_1.b, arg_1.c, vec3<u32>(1u, arg_1.e.x, arg_0.d.x), arg_0.e)) % 32u)), ~vec2<u32>(1u, _wgslsmith_add_u32(u_input.c.x, 50471u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(func_1(u_input.e, 1675f, 178f, Struct_1(213f, global0[_wgslsmith_index_u32(4294967295u, 5u)], 274f, u_input.c, u_input.a)), true, Struct_1(773f, vec3<bool>(true, false, true), 1379f, vec3<u32>(2763u, u_input.e, u_input.a.x), vec2<u32>(u_input.a.x, 77472u)), func_1(u_input.e, -609f, -283f, Struct_1(-364f, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], -147f, u_input.c, vec2<u32>(4294967295u, 1u))))))), global0[_wgslsmith_index_u32(u_input.c.x ^ ~u_input.e, 5u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), u_input.c, ~u_input.a), func_1(_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(u_input.c.yy, u_input.c.zx), select(vec2<u32>(17868u, u_input.c.x), select(vec2<u32>(u_input.a.x, 18870u), vec2<u32>(1u, u_input.c.x), vec2<bool>(false, true)), any(vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(849f))))), 258f, Struct_1(-460f, vec3<bool>(true, any(vec3<bool>(true, true, true)), true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(245f * -1139f), _wgslsmith_f_op_f32(trunc(-862f)))), vec3<u32>(~4294967295u, _wgslsmith_clamp_u32(u_input.c.x, 3715u, 61176u), 0u), u_input.a)), -310f, 1i);
    global1 = u_input.b;
    global1 = -vec4<i32>(i32(-1i) * -1i, min(_wgslsmith_add_i32(30653i, -61656i), -2147483647i), global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(5792u, var_0.d.x), 24u)], _wgslsmith_dot_vec3_i32(max(global1.yzx, u_input.d), u_input.b.yyx)) & u_input.b;
    global2 = array<i32, 24>();
    var var_1 = _wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(-var_0.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(259f + 1000f), var_0.a, _wgslsmith_f_op_f32(min(var_0.c, var_0.a))))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.c, var_0.a, -348f), vec3<f32>(var_0.a, 154f, -136f))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1269f, -324f, -1778f))))))));
}

