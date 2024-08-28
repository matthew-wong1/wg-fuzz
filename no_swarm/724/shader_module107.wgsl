struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: i32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<f32, 10> = array<f32, 10>(1134f, -1000f, -189f, 1342f, 243f, 720f, -1146f, 1044f, 562f, -1860f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: i32, arg_1: i32) -> u32 {
    global0 = max(0u, 29670u);
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 10u)], global1[_wgslsmith_index_u32(u_input.c.x, 10u)], global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(u_input.e.x, 10u)]), vec4<f32>(global1[_wgslsmith_index_u32(58052u, 10u)], 1515f, 336f, -852f))), vec4<f32>(1004f, _wgslsmith_f_op_f32(-431f - _wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 10u)], -234f)), 145f, global1[_wgslsmith_index_u32(u_input.c.x, 10u)]))));
    global1 = array<f32, 10>();
    global0 = 1u;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 10u)]) * _wgslsmith_f_op_f32(f32(-1f) * -1927f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_0.a.x)))), _wgslsmith_f_op_f32(trunc(-1861f)))))));
    return _wgslsmith_add_u32(reverseBits(~_wgslsmith_dot_vec2_u32(~u_input.b.xz, ~vec2<u32>(u_input.c.x, 22379u))), ~u_input.c.x);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4, arg_2: f32, arg_3: Struct_2) -> u32 {
    var var_0 = arg_1;
    let var_1 = Struct_1(func_3(2974i, 56687i), arg_1.b.b.b, -554f, arg_1.b.b.d);
    let var_2 = var_0.b.b.b;
    var_0 = arg_1;
    let var_3 = arg_1.b.b;
    return var_3.a;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: i32) -> i32 {
    global1 = array<f32, 10>();
    let var_0 = Struct_2(max(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.x, 4294967295u, u_input.e.x), u_input.b) >> (vec3<u32>(_wgslsmith_div_u32(11634u, 1u), abs(arg_1.x), u_input.e.x) % vec3<u32>(32u)), vec3<u32>(80844u, _wgslsmith_clamp_u32(4294967295u & u_input.c.x, u_input.e.x, 11878u), firstTrailingBit(~arg_1.x))), Struct_1(u_input.b.x, max(firstTrailingBit(vec2<i32>(0i, 8735i)) << (u_input.e.yz % vec2<u32>(32u)), u_input.d), _wgslsmith_f_op_f32(f32(-1f) * -362f), vec4<f32>(_wgslsmith_f_op_f32(853f - global1[_wgslsmith_index_u32(u_input.c.x, 10u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(3092u, arg_1.x, u_input.c.x), _wgslsmith_add_vec3_u32(arg_1.xyx, arg_1.zzz)), 10u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 10u)])), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-152f * global1[_wgslsmith_index_u32(0u, 10u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(14606u, 10u)] + global1[_wgslsmith_index_u32(u_input.e.x, 10u)]))))), u_input.a);
    var var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(_wgslsmith_div_u32(0u, 4294967295u), firstLeadingBit(0u << (var_0.a.x % 32u)), 37446u, 21390u)), vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, var_0.a.x ^ var_0.a.x), u_input.e.x, ~func_2(Struct_3(vec4<f32>(744f, global1[_wgslsmith_index_u32(var_0.b.a, 10u)], var_0.b.c, var_0.b.c)), Struct_4(arg_1.x, Struct_2(u_input.c.wyx, var_0.b, arg_2)), var_0.b.c, Struct_2(vec3<u32>(var_0.b.a, var_0.a.x, var_0.b.a), Struct_1(10532u, vec2<i32>(arg_2, u_input.d.x), -116f, vec4<f32>(var_0.b.c, global1[_wgslsmith_index_u32(arg_1.x, 10u)], 1748f, -797f)), -1i))), 11633u, 0u, firstTrailingBit(53402u)));
    global1 = array<f32, 10>();
    let var_2 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(~60931u, 10u)], _wgslsmith_f_op_f32(var_0.b.d.x - var_0.b.d.x), var_0.b.d.x, _wgslsmith_f_op_f32(max(-331f, var_0.b.d.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b.d - vec4<f32>(var_0.b.c, -818f, -1250f, -699f))), arg_0.x)), var_0.b.d));
    return abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, var_0.c, -1i, -1i)), firstTrailingBit(vec4<i32>(25856i, 8810i, var_0.c, arg_2)) ^ -vec4<i32>(0i, arg_2, 0i, -13771i)), countOneBits(-1i)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> StorageBuffer {
    global0 = ~(_wgslsmith_mult_u32(0u, _wgslsmith_mod_u32(~arg_2.a, 44122u)) | 4275u);
    var var_0 = Struct_1(~(~_wgslsmith_div_u32(~4294967295u, _wgslsmith_mult_u32(1u, u_input.b.x))), vec2<i32>(u_input.d.x, ~(~arg_3.b.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(209f, arg_2.c))), _wgslsmith_f_op_f32(min(arg_3.c, _wgslsmith_f_op_f32(arg_2.c + -1425f)))) - _wgslsmith_f_op_f32(-291f - -803f)), arg_2.d);
    let var_1 = reverseBits(arg_1.wxz);
    global1 = array<f32, 10>();
    var_0 = Struct_1(_wgslsmith_div_u32(1u, u_input.c.x), max(vec2<i32>(~(var_1.x << (arg_2.a % 32u)), 0i), arg_0), var_0.c, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x - arg_2.d.x)), -200f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 10u)]), arg_2.c));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(select(arg_3.d.xzw, var_0.d.yzz, vec3<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true)), true, false))), _wgslsmith_f_op_vec3_f32(-var_0.d.xxx), -21301i, _wgslsmith_f_op_f32(-1097f + var_0.c), ~max(abs(vec2<u32>(20170u, arg_3.a)), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(u_input.e.zx, u_input.b.zz), vec2<u32>(arg_2.a, arg_3.a) | u_input.e.zx)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(select(u_input.d, vec2<i32>(~u_input.d.x, u_input.a) & u_input.d, true), vec4<i32>(-func_1(vec4<bool>(false, false, true, true), abs(vec4<u32>(0u, 1u, u_input.b.x, u_input.b.x)), 3754i), u_input.a, -1i, ~72497i ^ ~u_input.a), Struct_1(1u & u_input.c.x, u_input.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 10u)])), -1016f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(286f, 933f, global1[_wgslsmith_index_u32(67348u, 10u)], -1282f))))), Struct_1(firstTrailingBit(_wgslsmith_dot_vec3_u32(~u_input.b, countOneBits(vec3<u32>(u_input.e.x, u_input.c.x, 4294967295u)))), vec2<i32>(u_input.d.x, ~1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(u_input.b.x, 10u)])) * -2021f) * 1f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1992f, -321f, 1390f, -1806f) * vec4<f32>(178f, global1[_wgslsmith_index_u32(u_input.c.x, 10u)], -649f, -1563f)) + vec4<f32>(-115f, global1[_wgslsmith_index_u32(u_input.b.x, 10u)], 1000f, global1[_wgslsmith_index_u32(32281u, 10u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-148f, 189f, global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(u_input.b.x, 10u)])), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), u_input.b.x >= u_input.e.x)))));
}

