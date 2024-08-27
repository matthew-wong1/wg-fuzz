struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

var<private> global1: array<bool, 10>;

var<private> global2: array<Struct_1, 21>;

var<private> global3: array<vec4<i32>, 30>;

var<private> global4: Struct_4;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: vec2<i32>, arg_3: u32) -> u32 {
    return arg_3;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> vec2<bool> {
    global3 = array<vec4<i32>, 30>();
    var var_0 = Struct_2(arg_1.a, arg_1, vec4<f32>(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 16u)], _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1220f), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(36819u, u_input.a, u_input.a, 1u), vec4<u32>(11984u, global4.a.x, 4294967295u, 90769u)), 16u)]), _wgslsmith_f_op_f32(-998f * 430f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + -383f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.a) + -1375f)));
    return vec2<bool>(true, true);
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(447f, _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(~(~u_input.a), 16u)], 1544f))));
    var var_1 = arg_0;
    global1 = array<bool, 10>();
    global4 = Struct_4(global4.a);
    var var_2 = func_4(Struct_3(true, vec3<f32>(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -381f))), _wgslsmith_f_op_f32(-1796f * arg_0.a), _wgslsmith_f_op_f32(min(-1000f, 1453f))), 1u | ~(~u_input.a), select(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, var_1.c, var_1.c), vec3<i32>(u_input.b, 11039i, -22552i)) << (~arg_0.d.x % 32u), false), Struct_1(arg_0.a, false, u_input.c, max(firstLeadingBit(global4.a.wy), _wgslsmith_add_vec2_u32(var_1.d, arg_0.d)))), Struct_1(global0[_wgslsmith_index_u32(~select(19148u, func_3(var_1.b, vec3<f32>(867f, -606f, var_1.a), vec2<i32>(-1440i, var_1.c), 48029u), u_input.a >= var_1.d.x), 16u)], global1[_wgslsmith_index_u32(u_input.a, 10u)], ~(~1i), firstLeadingBit(vec2<u32>(global4.a.x, 0u) ^ ~vec2<u32>(arg_0.d.x, global4.a.x))));
    return max(min(_wgslsmith_div_u32(~(~global4.a.x), 55928u), abs(1u)), countOneBits(4294967295u));
}

fn func_1() -> i32 {
    var var_0 = ~global3[_wgslsmith_index_u32(func_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1054f) + _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(37232u, 16u)], 163f))), false, 2147483647i, vec2<u32>(~33904u, u_input.a ^ global4.a.x))), 30u)];
    let var_1 = Struct_4(global4.a);
    var var_2 = func_4(Struct_3(select(global1[_wgslsmith_index_u32(~0u, 10u)], true, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, global4.a.x), 10u)]), vec3<f32>(global0[_wgslsmith_index_u32(var_1.a.x, 16u)], -1885f, 858f), _wgslsmith_dot_vec3_u32(~(var_1.a.wzx >> (global4.a.zzx % vec3<u32>(32u))), max(_wgslsmith_div_vec3_u32(vec3<u32>(global4.a.x, 4294967295u, 0u), global4.a.xzx), global4.a.xyx)), _wgslsmith_add_i32(_wgslsmith_mult_i32(var_0.x, u_input.b) >> (var_1.a.x % 32u), var_0.x << ((0u << (u_input.a % 32u)) % 32u)), global2[_wgslsmith_index_u32(~u_input.a, 21u)]), global2[_wgslsmith_index_u32(12521u, 21u)]);
    let var_3 = var_1;
    var var_4 = vec4<u32>(~firstTrailingBit(~1u), ~1u, var_3.a.x, min(1u, 0u) >> (global4.a.x % 32u)) ^ abs(var_3.a);
    return _wgslsmith_mult_i32(var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(~15163i, reverseBits(-2147483647i), u_input.b, firstLeadingBit(var_0.x)), vec4<i32>(firstLeadingBit(_wgslsmith_add_i32(var_0.x, u_input.c)), var_0.x, -2147483647i, var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-1081f - global0[_wgslsmith_index_u32(4294967295u, 16u)]);
    var var_1 = Struct_3(false & any(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(8094u, 16u)], 790f, global0[_wgslsmith_index_u32(global4.a.x, 16u)]), vec3<f32>(global0[_wgslsmith_index_u32(global4.a.x, 16u)], global0[_wgslsmith_index_u32(global4.a.x, 16u)], 1031f), vec3<bool>(global1[_wgslsmith_index_u32(global4.a.x, 10u)], global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(16709u, 10u)]))))))), u_input.a, _wgslsmith_dot_vec2_i32(max(-(~vec2<i32>(28020i, u_input.b)), firstLeadingBit(vec2<i32>(u_input.c, -14927i) | vec2<i32>(u_input.c, 15511i))), vec2<i32>(u_input.b, func_1())), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(func_3(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(677f, 831f, global0[_wgslsmith_index_u32(1u, 16u)])))), ~vec2<i32>(u_input.b, u_input.c), 1493u), firstLeadingBit(10344u)), 21u)]);
    var var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(80111u, 16u)])), 1052f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.e.d.x, 16u)]))))), var_1.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(909f, -731f, global0[_wgslsmith_index_u32(70190u, 16u)], var_1.e.a) + vec4<f32>(1000f, 391f, global0[_wgslsmith_index_u32(15958u, 16u)], global0[_wgslsmith_index_u32(8734u, 16u)])) + vec4<f32>(var_1.e.a, var_1.e.a, -1204f, -496f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(438f, var_1.b.x, 1000f, -459f)))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-847f * global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 16u)]) - var_1.e.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e.a - _wgslsmith_f_op_f32(round(var_1.b.x))))));
    var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1736f)))) - -996f), global2[_wgslsmith_index_u32(func_2(Struct_1(-107f, select(any(vec4<bool>(false, global1[_wgslsmith_index_u32(var_2.b.d.x, 10u)], true, var_1.e.b)), select(true, false, var_2.b.b), var_2.b.b), -var_1.d, ~global4.a.wz & var_2.b.d)), 21u)], vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a, var_1.e.a) - -457f)), _wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.x, _wgslsmith_f_op_f32(-var_1.b.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(362f, var_3.x)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1.e.a, -754f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_2.c, vec4<f32>(var_1.b.x, -809f, var_2.a, 927f), true)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(495f, var_1.e.a, 627f, -360f)))) + _wgslsmith_div_vec4_f32(var_2.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_2.c.x, var_1.b.x, 334f))))), ~_wgslsmith_div_u32(var_2.b.d.x, 0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(var_2.b.d.x, var_1.e.d.x), 16u)]) - -1000f), 1i, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(658f - var_1.b.x), _wgslsmith_f_op_f32(round(var_2.c.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1026f)))), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(countOneBits(4294967295u), 16u)] * _wgslsmith_f_op_f32(round(1790f)))), vec4<f32>(var_2.c.x, -213f, _wgslsmith_f_op_f32(select(-1000f, -1366f, any(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 10u)], global1[_wgslsmith_index_u32(var_2.b.d.x, 10u)])))), 1265f), !var_1.e.b)));
}

