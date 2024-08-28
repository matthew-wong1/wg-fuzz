struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<bool, 30> = array<bool, 30>(true, true, false, false, true, false, true, true, false, true, false, false, true, true, false, true, false, true, false, false, true, false, false, true, true, false, false, false, false, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<u32> {
    var var_0 = select(select(vec2<bool>(!(global1[_wgslsmith_index_u32(u_input.c, 30u)] || false), false), vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(31888u, u_input.d.x), 30u)] == any(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 30u)])), u_input.b <= 2147483647i), select(!(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 30u)], global1[_wgslsmith_index_u32(17574u, 30u)])), select(!vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.e.x, 30u)]), !vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 30u)]), true), global1[_wgslsmith_index_u32(~(~u_input.d.x), 30u)])), vec2<bool>(all(select(select(vec3<bool>(true, global1[_wgslsmith_index_u32(117476u, 30u)], true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)], false), true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 30u)], global1[_wgslsmith_index_u32(u_input.d.x, 30u)], global1[_wgslsmith_index_u32(115950u, 30u)]), select(global1[_wgslsmith_index_u32(3020u, 30u)], global1[_wgslsmith_index_u32(u_input.c, 30u)], global1[_wgslsmith_index_u32(24391u, 30u)]))), true && global1[_wgslsmith_index_u32(~1u, 30u)]), all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 30u)], !global1[_wgslsmith_index_u32(u_input.c, 30u)], !global1[_wgslsmith_index_u32(11387u, 30u)], true)) == true);
    var var_1 = _wgslsmith_f_op_f32(-1193f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -153f) * _wgslsmith_f_op_f32(min(-297f, 182f))), _wgslsmith_f_op_f32(f32(-1f) * -1339f))))));
    var var_2 = !vec3<bool>(global1[_wgslsmith_index_u32(~(~32651u), 30u)], var_0.x, var_0.x);
    var_0 = !select(!var_2.yz, !select(select(var_2.yy, var_2.zy, var_2.xx), !var_2.xy, true), !((1i >> (u_input.d.x % 32u)) >= countOneBits(-2147483647i)));
    let var_3 = Struct_2(Struct_1(~_wgslsmith_clamp_i32(~u_input.a.x, -2147483647i, reverseBits(-3256i)), vec4<bool>(!all(vec3<bool>(var_2.x, false, false)), var_2.x, ~u_input.d.x != ~u_input.e.x, global1[_wgslsmith_index_u32(u_input.d.x, 30u)])), Struct_1(u_input.a.x, !vec4<bool>(any(vec3<bool>(true, true, global1[_wgslsmith_index_u32(1u, 30u)])), var_2.x, !global1[_wgslsmith_index_u32(u_input.c, 30u)], -2147483647i == u_input.b)), Struct_1(u_input.b, !select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 30u)], true, false, var_0.x), vec4<bool>(true, false, var_2.x, var_0.x), var_0.x), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 30u)], var_2.x, var_0.x, global1[_wgslsmith_index_u32(1u, 30u)]), false)));
    return min(vec4<u32>(~reverseBits(0u), 1u, u_input.d.x, min(u_input.e.x, ~u_input.e.x << (_wgslsmith_div_u32(u_input.e.x, u_input.e.x) % 32u))), select(reverseBits(countOneBits(vec4<u32>(121034u, u_input.c, 15031u, 40827u))) & _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, u_input.c) << (vec4<u32>(u_input.e.x, u_input.d.x, u_input.e.x, u_input.c) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(50391u, u_input.e.x, u_input.c, u_input.c), vec4<u32>(17138u, u_input.d.x, 4827u, u_input.d.x))), ~(~(~vec4<u32>(u_input.c, 1u, 0u, 2134u))), !any(var_2.xz) && true));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec2<u32>) -> u32 {
    let var_0 = arg_1.b.zx;
    var var_1 = u_input.a;
    let var_2 = (vec4<u32>(select(41966u, arg_2.x, true), arg_0, _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.d.x, u_input.d.x), ~u_input.d.x), arg_0) << (func_3() % vec4<u32>(32u))) ^ ~vec4<u32>(4294967295u ^ reverseBits(arg_0), 84404u << (1u % 32u), u_input.e.x, arg_2.x);
    var var_3 = arg_0;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f - -1213f), _wgslsmith_f_op_f32(751f * -949f), -1000f, _wgslsmith_f_op_f32(-723f + -1000f))), vec4<f32>(1f, 1f, 1f, 1f), arg_1.b)) * vec4<f32>(_wgslsmith_f_op_f32(min(2263f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-820f))))), -1894f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -337f) + -917f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1388f)))), _wgslsmith_f_op_f32(f32(-1f) * -1500f)))));
    return ~9881u;
}

fn func_1(arg_0: u32, arg_1: bool) -> StorageBuffer {
    global0 = abs(-(~(-u_input.a.x)));
    var var_0 = select(vec2<bool>(true, arg_1), !vec2<bool>(all(!vec3<bool>(arg_1, false, true)), false), true);
    let var_1 = false;
    var var_2 = ~select(u_input.d, ~u_input.d, select(select(vec3<bool>(false, arg_1, global1[_wgslsmith_index_u32(u_input.c, 30u)]), vec3<bool>(var_0.x, arg_1, false), vec3<bool>(true, true, var_1)), vec3<bool>(true, arg_1, true), true)) | vec3<u32>(~func_2(1u, Struct_1(u_input.b, vec4<bool>(var_1, arg_1, false, var_0.x)), u_input.d.yx), 66333u, u_input.c);
    var_2 = reverseBits(~firstLeadingBit(vec3<u32>(~u_input.c, u_input.d.x, ~0u)));
    return StorageBuffer(firstTrailingBit(-60954i), vec4<u32>(max(4294967295u, u_input.e.x | arg_0), u_input.e.x ^ ~57714u, 4294967295u, arg_0) & ~vec4<u32>(u_input.d.x, 1u, 1u, 7776u), reverseBits(~countOneBits(-u_input.a.x)), arg_0, (u_input.a.xy ^ (u_input.a.xy | vec2<i32>(74705i, -16535i))) & u_input.a.wx);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1i;
    let var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(floor(1151f))), 453f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1206f - -400f) + _wgslsmith_f_op_f32(min(-1000f, 135f))), 874f) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-684f, _wgslsmith_f_op_f32(-935f - -537f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-957f, -152f), vec2<f32>(435f, -2627f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(2329f, -313f) + vec2<f32>(-399f, -788f)))))), vec2<bool>(global1[_wgslsmith_index_u32(1u, 30u)], false)));
    global0 = min(u_input.a.x, -(~(~67150i)) | firstTrailingBit(u_input.b));
    let x = u_input.a;
    s_output = func_1(u_input.d.x, ~(select(4294967295u, 77208u, global1[_wgslsmith_index_u32(u_input.c, 30u)]) >> (abs(0u) % 32u)) < u_input.d.x);
}

