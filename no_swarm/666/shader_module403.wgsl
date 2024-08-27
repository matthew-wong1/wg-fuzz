struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<vec4<u32>, 17>;

var<private> global2: array<i32, 6> = array<i32, 6>(1568i, 2147483647i, -30155i, 0i, -53848i, -7222i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: u32) -> vec4<i32> {
    global0 = 0i;
    global2 = array<i32, 6>();
    var var_0 = 1f;
    global2 = array<i32, 6>();
    global2 = array<i32, 6>();
    return ~firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-global2[_wgslsmith_index_u32(1u, 6u)], -12573i, firstTrailingBit(global2[_wgslsmith_index_u32(47452u, 6u)]), _wgslsmith_mult_i32(-1i, -1911i)), -vec4<i32>(u_input.a, global2[_wgslsmith_index_u32(0u, 6u)], -7203i, arg_2.x), ~(vec4<i32>(arg_2.x, u_input.c.x, global2[_wgslsmith_index_u32(36597u, 6u)], u_input.a) | vec4<i32>(arg_2.x, global2[_wgslsmith_index_u32(1u, 6u)], 2147483647i, global2[_wgslsmith_index_u32(1u, 6u)]))));
}

fn func_2(arg_0: bool, arg_1: vec3<f32>) -> bool {
    let var_0 = 4294967295u;
    var var_1 = countOneBits(~vec4<i32>(min(-1i, u_input.c.x) << (var_0 % 32u), global2[_wgslsmith_index_u32(var_0, 6u)], -34694i, ~u_input.a));
    var var_2 = arg_1;
    var_1 = -func_3(Struct_2(Struct_1(vec2<u32>(40791u, var_0), vec3<bool>(arg_0, arg_0, arg_0), ~var_0), _wgslsmith_f_op_vec2_f32(-arg_1.yx), Struct_1(vec2<u32>(378u, var_0), !vec3<bool>(arg_0, arg_0, arg_0), var_0 & var_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.zz))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-130f, _wgslsmith_f_op_f32(f32(-1f) * -143f), _wgslsmith_f_op_f32(var_2.x * var_2.x), _wgslsmith_f_op_f32(min(-131f, arg_1.x)))), firstTrailingBit(vec2<i32>(94808i, -2147483647i)), var_0);
    var var_3 = -820f;
    return (i32(-1i) * -1i) < abs(func_3(Struct_2(Struct_1(vec2<u32>(39447u, var_0), vec3<bool>(false, arg_0, arg_0), var_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1086f, 1179f)), Struct_1(vec2<u32>(var_0, var_0), vec3<bool>(true, false, false), var_0), _wgslsmith_f_op_vec2_f32(-var_2.yx)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.x, 557f, -542f, var_2.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(513f, var_2.x, -498f, var_2.x))))), u_input.b.xz, var_0).x);
}

fn func_1(arg_0: u32) -> Struct_4 {
    global0 = ~(-(~u_input.a));
    var var_0 = ~(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, -3365i), reverseBits(u_input.c >> (vec3<u32>(arg_0, 4294967295u, arg_0) % vec3<u32>(32u))), vec3<i32>(~(-1i), firstTrailingBit(global2[_wgslsmith_index_u32(arg_0, 6u)]), 0i)));
    var var_1 = func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1143f)))), _wgslsmith_f_op_f32(f32(-1f) * -290f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-345f * 1164f))) + _wgslsmith_f_op_f32(f32(-1f) * -964f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2560f + 447f))), _wgslsmith_f_op_f32(max(-782f, _wgslsmith_div_f32(-224f, -518f))), -545f)));
    var_1 = global2[_wgslsmith_index_u32(~(~reverseBits(~arg_0)), 6u)] >= global2[_wgslsmith_index_u32(27706u, 6u)];
    var var_2 = Struct_4(firstLeadingBit(firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global2[_wgslsmith_index_u32(27871u, 6u)], u_input.c.x, u_input.c.x), vec4<i32>(0i, 9582i, u_input.a, global2[_wgslsmith_index_u32(88867u, 6u)])), var_0.x, var_0.x & var_0.x))), abs(reverseBits(u_input.b.zx)) ^ -(~vec2<i32>(23748i, -68165i)), Struct_1(countOneBits(vec2<u32>(~arg_0, _wgslsmith_div_u32(arg_0, arg_0))), vec3<bool>(all(vec2<bool>(true, true)), true, false), 1u), Struct_3(all(vec2<bool>(true, true)), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(arg_0, _wgslsmith_mult_u32(0u, 3204u), ~0u), 60777u, ~arg_0 & ~1u), Struct_1(vec2<u32>(min(arg_0, arg_0), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 0u, arg_0), vec3<u32>(3626u, 0u, 4294967295u))), vec3<bool>(true, true, true), arg_0), reverseBits(u_input.c.zy)), !(!any(vec2<bool>(false, true))));
    return Struct_4(func_3(Struct_2(Struct_1(vec2<u32>(0u, arg_0), vec3<bool>(var_2.c.b.x, var_2.e, var_2.e), min(var_2.d.b, 4294967295u)), vec2<f32>(_wgslsmith_div_f32(-507f, -180f), _wgslsmith_div_f32(-1974f, -703f)), Struct_1(var_2.c.a, !vec3<bool>(var_2.e, var_2.e, true), _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(60097u, 17u)], vec4<u32>(21324u, var_2.d.c.a.x, arg_0, 1u))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(113f, 816f)))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1562f, _wgslsmith_f_op_f32(-709f + -428f), 287f, -1436f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1061f, -468f, 730f, 1083f)))))), firstLeadingBit(vec2<i32>(-32814i, var_0.x << (arg_0 % 32u))), countOneBits(var_2.c.c)).xwx, _wgslsmith_mult_vec2_i32(vec2<i32>(1i, global2[_wgslsmith_index_u32(~arg_0, 6u)]), firstTrailingBit(_wgslsmith_div_vec2_i32(u_input.b.xy, u_input.b.yx))), Struct_1(~countOneBits(_wgslsmith_mod_vec2_u32(var_2.c.a, vec2<u32>(arg_0, var_2.d.b))), var_2.d.c.b, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(global1[_wgslsmith_index_u32(var_2.d.b, 17u)], vec4<u32>(38123u, 1u, 26554u, arg_0)), ~global1[_wgslsmith_index_u32(var_2.d.c.c, 17u)]) ^ 1u), var_2.d, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.b.x;
    global1 = array<vec4<u32>, 17>();
    let var_0 = func_1(~17835u);
    let var_1 = func_1(56270u).d;
    let var_2 = Struct_1(select(~(~var_1.c.a), var_0.c.a ^ ~var_1.c.a, var_0.c.b.yz) | _wgslsmith_clamp_vec2_u32(func_1(1u).c.a, var_0.c.a, var_0.d.c.a), var_0.c.b, ~func_1(var_1.c.a.x << (~var_0.c.c % 32u)).c.c);
    global2 = array<i32, 6>();
    let var_3 = var_0;
    global2 = array<i32, 6>();
    global1 = array<vec4<u32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(~1i, var_2.c, var_3.c.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1705f, 154f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -959f)))));
}

