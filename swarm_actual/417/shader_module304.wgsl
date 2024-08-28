struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1, arg_3: i32) -> i32 {
    global0 = array<bool, 31>();
    global0 = array<bool, 31>();
    let var_0 = Struct_1(~abs(arg_2.a), arg_1.a.a.b, arg_1.a.a.b.x, all(select(!select(vec4<bool>(arg_0.d, true, true, arg_1.c.d), vec4<bool>(global0[_wgslsmith_index_u32(arg_1.a.a.a.x, 31u)], arg_0.d, false, arg_0.d), arg_0.d), !(!vec4<bool>(false, arg_0.d, false, true)), true)));
    global0 = array<bool, 31>();
    global0 = array<bool, 31>();
    return _wgslsmith_dot_vec2_i32(select(~vec2<i32>(_wgslsmith_sub_i32(1i, u_input.c), arg_1.a.b), arg_1.a.c << ((arg_0.b.xy | arg_1.c.b.xx) % vec2<u32>(32u)), !all(!vec3<bool>(arg_1.a.a.d, false, false))), -(-vec2<i32>(arg_1.a.c.x, u_input.c) >> (arg_2.b.xz % vec2<u32>(32u))));
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(reverseBits(abs(77338u)), ~(~4642u))), abs(vec2<u32>(1u, min(_wgslsmith_add_u32(38147u, 41599u), 1u))));
    var var_1 = Struct_4(_wgslsmith_add_i32(min(~func_3(Struct_1(vec3<u32>(var_0.x, 4294967295u, var_0.x), vec3<u32>(65939u, var_0.x, var_0.x), var_0.x, false), Struct_3(Struct_2(Struct_1(vec3<u32>(var_0.x, 4294967295u, var_0.x), vec3<u32>(var_0.x, var_0.x, 11743u), 10122u, false), -54950i, u_input.a), var_0.x, Struct_1(vec3<u32>(var_0.x, 4294967295u, var_0.x), vec3<u32>(var_0.x, var_0.x, 1u), 1u, global0[_wgslsmith_index_u32(var_0.x, 31u)])), Struct_1(vec3<u32>(var_0.x, 19340u, var_0.x), vec3<u32>(12170u, 20546u, var_0.x), 1u, true), u_input.b), reverseBits(firstTrailingBit(u_input.b))), _wgslsmith_add_i32(-1i, -reverseBits(u_input.a.x))), Struct_2(Struct_1(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(var_0.x, 4294967295u, var_0.x), vec3<u32>(var_0.x, 1u, var_0.x), global0[_wgslsmith_index_u32(var_0.x, 31u)]), _wgslsmith_add_vec3_u32(vec3<u32>(2072u, 4294967295u, 4294967295u), vec3<u32>(var_0.x, var_0.x, var_0.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(844u, 90258u, var_0.x), vec3<u32>(var_0.x, var_0.x, var_0.x))), select(vec3<u32>(var_0.x, 7980u, var_0.x), vec3<u32>(var_0.x, var_0.x, var_0.x) >> (vec3<u32>(var_0.x, 31252u, 0u) % vec3<u32>(32u)), vec3<bool>(true, true, global0[_wgslsmith_index_u32(56665u, 31u)])), select(var_0.x, ~0u, any(vec3<bool>(global0[_wgslsmith_index_u32(26928u, 31u)], true, global0[_wgslsmith_index_u32(var_0.x, 31u)]))), true), -78099i, min(abs(u_input.a) ^ vec2<i32>(-7930i, 77113i), ~(vec2<i32>(0i, u_input.c) >> (var_0 % vec2<u32>(32u))))), Struct_3(Struct_2(Struct_1(vec3<u32>(var_0.x, var_0.x, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(38815u, var_0.x, 0u), vec3<u32>(0u, var_0.x, 49772u), vec3<u32>(var_0.x, 39255u, 24203u)), 0u, !global0[_wgslsmith_index_u32(var_0.x, 31u)]), u_input.c, ~vec2<i32>(-10275i, -36402i)), var_0.x, Struct_1(~vec3<u32>(var_0.x, 31547u, 0u) ^ ~vec3<u32>(var_0.x, 0u, var_0.x), ~vec3<u32>(1u, var_0.x, 29146u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0.x, 4294967295u), var_0.x), true)));
    let var_2 = -firstTrailingBit(-51046i);
    var var_3 = vec3<u32>(min(12472u, ~var_1.b.a.c), 4294967295u, 0u);
    let var_4 = var_1.b.a;
    return Struct_3(var_1.c.a, reverseBits(abs(var_1.b.a.b.x)), var_1.b.a);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2) -> u32 {
    global0 = array<bool, 31>();
    var var_0 = ~min(~(-vec4<i32>(-2147483647i, 20841i, u_input.c, arg_1.c.x)) ^ max(vec4<i32>(2147483647i, arg_1.b, arg_1.b, u_input.a.x), -vec4<i32>(u_input.b, -59564i, 9061i, 0i)), -vec4<i32>(6680i & arg_1.c.x, 49958i, u_input.a.x, 1i));
    var var_1 = func_2();
    var_0 = abs(~select(-(vec4<i32>(var_1.a.b, var_1.a.c.x, u_input.b, 1i) & vec4<i32>(-1i, 2147483647i, -27752i, var_0.x)), -(vec4<i32>(-11416i, 9408i, 50248i, u_input.a.x) ^ vec4<i32>(arg_1.b, arg_1.b, 26709i, arg_1.c.x)), var_1.c.d));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f - -837f), _wgslsmith_f_op_f32(-1912f + -493f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1006f, 1581f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(192f, -680f)))), vec2<f32>(486f, _wgslsmith_f_op_f32(-572f + _wgslsmith_f_op_f32(324f * -452f))))));
    return arg_1.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(_wgslsmith_sub_vec3_u32(select(vec3<u32>(abs(0u), _wgslsmith_div_u32(3542u, 36955u), 1u), vec3<u32>(43425u, firstTrailingBit(0u), func_1(vec4<u32>(0u, 7796u, 4294967295u, 13781u), Struct_2(Struct_1(vec3<u32>(0u, 25239u, 1u), vec3<u32>(0u, 55539u, 99620u), 7783u, global0[_wgslsmith_index_u32(4294967295u, 31u)]), u_input.a.x, vec2<i32>(u_input.a.x, -2147483647i)))), true), ~vec3<u32>(1u, 1u, 1u)));
    var var_1 = Struct_1(~(~(~vec3<u32>(var_0.x, 0u, 4051u)) >> (~(~var_0) % vec3<u32>(32u))), ~var_0 ^ reverseBits(var_0), var_0.x, func_2().a.a.d && any(vec3<bool>(true, true, false)));
    var_1 = Struct_1(~min(var_0, vec3<u32>(var_0.x, 4294967295u, 4844u) | vec3<u32>(83130u, var_0.x, 0u)), ~(~vec3<u32>(var_1.b.x, var_1.c, 22118u)), var_1.b.x, func_2().a.a.d == ((var_1.d && var_1.d) & global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, var_1.a.x), 31u)]));
    var var_2 = Struct_2(func_2().c, ~(-17156i), -max(vec2<i32>(-1i, _wgslsmith_sub_i32(u_input.b, 4416i)), vec2<i32>(~(-33476i), u_input.c | u_input.a.x)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-299f - _wgslsmith_f_op_f32(f32(-1f) * -1400f)), _wgslsmith_f_op_f32(f32(-1f) * -824f), 913f, _wgslsmith_f_op_f32(-349f + 1337f)))));
    var_2 = func_2().a;
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(565f, _wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(max(var_3.x, _wgslsmith_f_op_f32(var_3.x - var_3.x))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -493f)))));
    var_1 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.b, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.c, var_2.b, 1i, u_input.c)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_2.b, u_input.a.x), vec3<i32>(895i, -3366i, -42306i)), var_2.c.x, ~27365i, 1i)), u_input.b << (~(68306u | var_1.b.x) % 32u), -u_input.c));
}

