struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: array<bool, 29>;

var<private> global2: bool;

var<private> global3: u32 = 0u;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<bool> {
    global1 = array<bool, 29>();
    global0 = array<bool, 3>();
    let var_0 = min(i32(-1i) * -12058i, -3212i);
    let var_1 = (abs(u_input.a.xz) << (~u_input.a.zz % vec2<u32>(32u))) ^ vec2<u32>(~(~_wgslsmith_mod_u32(0u, 105530u)), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-470f, -841f, -506f) - vec3<f32>(1939f, 568f, -1842f))), vec3<f32>(_wgslsmith_f_op_f32(abs(-1143f)), -1345f, _wgslsmith_f_op_f32(abs(1060f))), select(!global1[_wgslsmith_index_u32(4294967295u, 29u)], true, global0[_wgslsmith_index_u32(1u, 3u)]))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1836f, 528f, 1195f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 380f, -600f) + vec3<f32>(1517f, 476f, -2080f))))), countOneBits(var_1 << (select(vec2<u32>(1u, 23407u), reverseBits(vec2<u32>(1u, 17339u)), select(vec2<bool>(global0[_wgslsmith_index_u32(var_1.x, 3u)], global1[_wgslsmith_index_u32(81023u, 29u)]), vec2<bool>(global1[_wgslsmith_index_u32(var_1.x, 29u)], global1[_wgslsmith_index_u32(1u, 29u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(19973u, 29u)]))) % vec2<u32>(32u))), 513f, all(!vec4<bool>(false, true | global1[_wgslsmith_index_u32(1u, 29u)], any(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 29u)], true, global0[_wgslsmith_index_u32(49637u, 3u)], global0[_wgslsmith_index_u32(47757u, 3u)])), global0[_wgslsmith_index_u32(4294967295u, 3u)])));
    return select(select(!vec2<bool>(-22076i < var_0, !var_2.d), vec2<bool>(true, true), !var_2.d), select(select(vec2<bool>(true, all(vec4<bool>(global0[_wgslsmith_index_u32(1u, 3u)], true, false, true))), !(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], global1[_wgslsmith_index_u32(var_1.x, 29u)])), true), vec2<bool>(false, var_2.d), all(vec4<bool>(global0[_wgslsmith_index_u32(var_1.x & var_2.b.x, 3u)], global1[_wgslsmith_index_u32(u_input.a.x, 29u)] & false, global0[_wgslsmith_index_u32(1u, 3u)], true))), any(select(!(!vec2<bool>(var_2.d, true)), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)] | var_2.d, true), global1[_wgslsmith_index_u32(~23921u, 29u)])));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: vec2<f32>) -> bool {
    let var_0 = !select(!select(select(vec2<bool>(global1[_wgslsmith_index_u32(51148u, 29u)], arg_0), vec2<bool>(arg_0, arg_1.d), vec2<bool>(false, arg_1.d)), vec2<bool>(false, false), true), func_3(), vec2<bool>(true, all(vec4<bool>(true, true, true, true))));
    let var_1 = true;
    var var_2 = select(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, reverseBits(abs(22198i)), i32(-1i) * -1i), all(select(!vec3<bool>(true, var_1, arg_1.d), !(!vec3<bool>(global1[_wgslsmith_index_u32(arg_1.b.x, 29u)], false, true)), !select(vec3<bool>(true, false, var_0.x), vec3<bool>(arg_1.d, false, arg_1.d), global1[_wgslsmith_index_u32(arg_1.b.x, 29u)]))));
    global3 = _wgslsmith_mod_u32(select(1u, ~arg_1.b.x, func_3().x), arg_1.b.x & arg_1.b.x);
    let var_3 = ~vec4<u32>((firstTrailingBit(1u) & (arg_1.b.x << (u_input.a.x % 32u))) ^ u_input.a.x, ~0u, (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b.x, arg_1.b.x, 0u, 0u), vec4<u32>(arg_1.b.x, 1u, u_input.a.x, arg_1.b.x)) & _wgslsmith_sub_u32(0u, u_input.a.x)) ^ ~_wgslsmith_mult_u32(arg_1.b.x, arg_1.b.x), ~min(0u, 1u) | arg_1.b.x);
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> f32 {
    var var_0 = arg_1.b.x;
    global0 = array<bool, 3>();
    let var_1 = arg_0.a.x;
    var var_2 = select(false, all(select(vec2<bool>(func_2(arg_2, Struct_1(vec3<f32>(645f, var_1, -441f), vec2<u32>(arg_0.b.x, 1u), arg_1.a.x, arg_2), 1000f, vec2<f32>(arg_0.c, 884f)), any(vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 3u)], arg_2))), func_3(), !func_3())), select(true, ~44652u > ~arg_0.b.x, all(vec2<bool>(true, true))));
    return arg_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -49660i;
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(656f + 432f) * _wgslsmith_f_op_f32(ceil(373f))))), _wgslsmith_f_op_f32(f32(-1f) * -177f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<f32>(827f, -471f, -434f), vec2<u32>(52791u, 0u), -910f, false), Struct_1(vec3<f32>(-581f, 115f, -497f), vec2<u32>(u_input.a.x, u_input.a.x), -941f, global1[_wgslsmith_index_u32(22604u, 29u)]), true)) * -1023f))), ~(~vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), _wgslsmith_mult_u32(9060u, 46443u))), 1456f, !(!all(vec2<bool>(false, true))));
    global0 = array<bool, 3>();
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1158f, var_1.c, var_1.a.x))))), vec2<u32>(abs(_wgslsmith_mult_u32(u_input.a.x, var_1.b.x)), 1u), _wgslsmith_div_f32(1000f, -1495f), true);
    let var_2 = ~(var_1.b.x & abs(_wgslsmith_sub_u32(32556u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a), abs(-vec4<i32>(0i, ~0i, 10836i << (var_1.b.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -45924i, -4085i, 2147483647i), vec4<i32>(25143i, -18106i, 2147483647i, 1i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x + -563f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(224f)) * -1201f) - -938f)), var_2, max(-1i, ~_wgslsmith_add_i32(_wgslsmith_sub_i32(10685i, 2147483647i), i32(-1i) * -29763i)));
}

