struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23>;

var<private> global1: vec3<u32> = vec3<u32>(1u, 25455u, 1u);

var<private> global2: array<f32, 7> = array<f32, 7>(2284f, 862f, 1351f, 808f, -1312f, -668f, -102f);

var<private> global3: array<vec3<u32>, 29>;

var<private> global4: Struct_2 = Struct_2(-17357i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<f32> {
    global1 = global3[_wgslsmith_index_u32(global1.x, 29u)];
    global4 = Struct_2(~u_input.c & -abs(_wgslsmith_sub_i32(global4.a, -42586i)));
    global2 = array<f32, 7>();
    var var_0 = vec2<i32>(~(-global4.a), 33519i);
    let var_1 = 2147483647i;
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1117f, global2[_wgslsmith_index_u32(111343u, 7u)]))))))));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(-1551f, global2[_wgslsmith_index_u32(~u_input.b.x, 7u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(376f, global2[_wgslsmith_index_u32(u_input.b.x, 7u)]))))), _wgslsmith_f_op_vec2_f32(func_3())));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-853f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(965f))) * _wgslsmith_f_op_vec2_f32(func_3()).x)));
    global4 = Struct_2(_wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, _wgslsmith_clamp_i32(u_input.a, 33213i, -47878i), select(13082i, 0i, false)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global4.a, u_input.c), vec2<i32>(u_input.c, 0i)), _wgslsmith_add_i32(-3525i, 5323i), -1i) ^ (max(vec3<i32>(-27287i, -45337i, 20323i), vec3<i32>(u_input.c, 1i, -37481i)) >> (vec3<u32>(u_input.b.x, 0u, global1.x) % vec3<u32>(32u)))));
    let var_1 = Struct_2(global4.a);
    var var_2 = 2829u;
    return any(arg_1.yzy);
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = ~reverseBits(~(~vec4<u32>(u_input.b.x, 16859u, 4294967295u, global1.x)));
    return Struct_2(~(~_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-24436i, 1i, 53969i, u_input.c)), vec4<i32>(-1i, -4750i, 2147483647i, u_input.a))));
}

fn func_1() -> Struct_2 {
    global0 = array<bool, 23>();
    var var_0 = -635f;
    global4 = func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -779f), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.b.x, 7u)], global2[_wgslsmith_index_u32(global1.x, 7u)]))))), ~(-global4.a), vec4<bool>(any(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], global0[_wgslsmith_index_u32(global1.x, 23u)], true)), true, global0[_wgslsmith_index_u32(u_input.b.x, 23u)], func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1053f + 613f), _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(u_input.b.x, 7u)])))), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.x, u_input.b.x), 23u)], !global0[_wgslsmith_index_u32(0u, 23u)], any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], false, global0[_wgslsmith_index_u32(global1.x, 23u)])), all(vec3<bool>(global0[_wgslsmith_index_u32(20949u, 23u)], true, true))))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(12403u, 7u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(852f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(u_input.b.x, 7u)], 557f)))))));
    var var_1 = _wgslsmith_dot_vec3_i32(~(~abs(vec3<i32>(-362i, global4.a, -15509i))), -vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(10607i, 2147483647i, u_input.c, global4.a), ~vec4<i32>(1i, 7014i, 1609i, 2147483647i)), -13097i ^ max(global4.a, global4.a), u_input.c));
    return Struct_2(~(-36547i));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_1();
    global4 = Struct_2(_wgslsmith_add_i32(~(-20431i >> (global1.x % 32u)) ^ -10450i, reverseBits(func_4(vec2<f32>(global2[_wgslsmith_index_u32(global1.x, 7u)], global2[_wgslsmith_index_u32(u_input.b.x, 7u)]), -54160i, vec4<bool>(false, true, false, true)).a) ^ ~global4.a));
    let var_0 = firstTrailingBit(global1.x);
    var var_1 = countOneBits(1i);
    var_1 = 1i;
    var_1 = u_input.a;
    var var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(0i, global4.a), _wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(abs(firstLeadingBit(1u)), 7u)], _wgslsmith_div_f32(-482f, _wgslsmith_f_op_vec2_f32(func_3()).x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2[_wgslsmith_index_u32(0u, 7u)], -982f), vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 7u)], 638f))))), u_input.b.x);
}

