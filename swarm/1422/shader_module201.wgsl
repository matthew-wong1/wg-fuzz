struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -379f;

var<private> global1: f32;

var<private> global2: array<f32, 23> = array<f32, 23>(-120f, -1006f, -1074f, 417f, -651f, 935f, 457f, -475f, 1253f, 450f, -493f, -802f, -1047f, -534f, 808f, -993f, 1528f, 1030f, 288f, 1823f, -876f, 634f, -293f);

var<private> global3: array<vec4<bool>, 7> = array<vec4<bool>, 7>(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: vec3<u32>) -> bool {
    var var_0 = arg_1;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(abs(105128u), 23u)]) + arg_0))));
    let var_1 = 4294967295u;
    global2 = array<f32, 23>();
    let var_2 = vec4<bool>(arg_1.d.x, var_0.d.x, arg_1.d.x, arg_1.e);
    return !(!arg_1.e);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> vec3<bool> {
    global3 = array<vec4<bool>, 7>();
    global1 = _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.c.yx, ~u_input.c.yw), abs(72735u), ~(~62518u)), (~u_input.c.zzz ^ ~vec3<u32>(u_input.b, 0u, 1u)) << (_wgslsmith_mult_vec3_u32(u_input.c.xww ^ vec3<u32>(1u, 15430u, 1u), ~vec3<u32>(4294967295u, u_input.a, u_input.a)) % vec3<u32>(32u))), 23u)]));
    var var_0 = all(!select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)))) && (all(vec3<bool>(arg_0.b.x < arg_0.b.x, any(global3[_wgslsmith_index_u32(u_input.c.x, 7u)]), true)) != all(vec2<bool>(select(true, false, true), true)));
    var var_1 = arg_1.x;
    var_0 = true;
    return !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -141f) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_0.b.x, 744f)))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: i32) -> u32 {
    let var_0 = countOneBits(~vec3<u32>(abs(_wgslsmith_add_u32(4294967295u, u_input.b)), (u_input.c.x >> (u_input.a % 32u)) | 27343u, u_input.a));
    let var_1 = ~(vec4<i32>(_wgslsmith_dot_vec2_i32(arg_0.e.a.xy, arg_0.e.a.zx) & -1i, arg_0.e.a.x, ~arg_0.e.a.x, select(select(-7962i, arg_3, true), arg_1.a.x, false)) | (vec4<i32>(arg_0.a.a.x, arg_0.a.a.x << (var_0.x % 32u), 2147483647i, 1i) & -firstTrailingBit(vec4<i32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, 2147483647i))));
    var var_2 = func_3(Struct_1(vec3<i32>(arg_0.c, -30882i, -arg_1.a.x), _wgslsmith_f_op_vec3_f32(-arg_1.b)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2.x * global2[_wgslsmith_index_u32(4294967295u, 23u)]), _wgslsmith_f_op_f32(max(-1437f, arg_0.a.b.x)), _wgslsmith_f_op_f32(-856f + 199f), _wgslsmith_f_op_f32(select(arg_2.x, arg_1.b.x, true)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-146f, arg_0.a.b.x, arg_1.b.x, arg_0.d))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b.x, arg_1.b.x, 1648f, arg_0.a.b.x), vec4<f32>(-564f, arg_0.a.b.x, -1826f, global2[_wgslsmith_index_u32(var_0.x, 23u)])), func_2(arg_2.x, Struct_3(-343f, vec3<f32>(arg_0.d, -343f, arg_2.x), u_input.c.x, arg_0.b, true), var_1.yx, vec3<u32>(1438u, var_0.x, 22937u)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, arg_0.d, arg_0.e.b.x, arg_0.e.b.x))))), global3[_wgslsmith_index_u32(~firstTrailingBit(reverseBits(0u)), 7u)])));
    global3 = array<vec4<bool>, 7>();
    var var_3 = vec4<bool>(any(var_2.yy), true, false, !(_wgslsmith_f_op_f32(-arg_2.x) != _wgslsmith_f_op_f32(250f - _wgslsmith_f_op_f32(trunc(1000f)))));
    return _wgslsmith_add_u32(1u, _wgslsmith_sub_u32(~24320u, var_0.x | ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(any(vec3<bool>(true, true, true)) && (_wgslsmith_f_op_f32(f32(-1f) * -140f) > global2[_wgslsmith_index_u32(max(~u_input.b, func_1(Struct_2(Struct_1(vec3<i32>(-2147483647i, 1i, -1i), vec3<f32>(global2[_wgslsmith_index_u32(17180u, 23u)], global2[_wgslsmith_index_u32(u_input.c.x, 23u)], global2[_wgslsmith_index_u32(83245u, 23u)])), vec3<bool>(false, false, false), -1i, 931f, Struct_1(vec3<i32>(28736i, -29520i, 81225i), vec3<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 23u)], -508f, -353f))), Struct_1(vec3<i32>(-17516i, 2147483647i, 2216i), vec3<f32>(global2[_wgslsmith_index_u32(6306u, 23u)], 325f, 1000f)), vec3<f32>(-1333f, global2[_wgslsmith_index_u32(u_input.b, 23u)], 748f), 18221i)), 23u)]), global2[_wgslsmith_index_u32(abs(~4294967295u), 23u)] <= global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(~u_input.a, ~u_input.a), u_input.c.x), 23u)]);
    var var_1 = Struct_1(vec3<i32>(1i, 1i, 1i) << (~u_input.c.xxx % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(9127u, 23u)], -1156f, global2[_wgslsmith_index_u32(1u, 23u)])))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 23u)], global2[_wgslsmith_index_u32(u_input.b, 23u)], -673f), vec3<f32>(-2353f, global2[_wgslsmith_index_u32(u_input.c.x, 23u)], global2[_wgslsmith_index_u32(1917u, 23u)])))), vec3<f32>(-431f, global2[_wgslsmith_index_u32(u_input.b, 23u)], -687f))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(553f, -1406f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-212f, _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-var_1.b.x)), var_1.b))), u_input.c.x, !(!select(select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, true, var_0.x), false), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, var_0.x, false), var_0.x), all(vec3<bool>(false, var_0.x, var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-385f))) - -517f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x * 1000f)));
    global3 = array<vec4<bool>, 7>();
    let var_3 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-264f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2213f * _wgslsmith_f_op_f32(trunc(1371f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-528f - 1878f) * 552f), _wgslsmith_div_f32(-223f, _wgslsmith_f_op_f32(step(670f, 781f)))))), 81487u, _wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, 934f, 1635f, global2[_wgslsmith_index_u32(19122u, 23u)])))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 23u)], -1732f, 1000f, 841f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(611f, global2[_wgslsmith_index_u32(4294967295u, 23u)], var_2.b.x, 949f) * vec4<f32>(534f, 1000f, -1044f, var_2.a)) * vec4<f32>(var_1.b.x, -490f, 134f, var_2.a))))));
}

