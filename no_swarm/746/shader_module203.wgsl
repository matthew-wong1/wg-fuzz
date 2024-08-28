struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6> = array<bool, 6>(false, true, true, true, false, true);

var<private> global1: array<vec3<u32>, 22> = array<vec3<u32>, 22>(vec3<u32>(4294967295u, 1u, 76266u), vec3<u32>(4294967295u, 7189u, 1u), vec3<u32>(34166u, 19746u, 4294967295u), vec3<u32>(63367u, 0u, 12154u), vec3<u32>(0u, 18834u, 1u), vec3<u32>(4294967295u, 34551u, 4294967295u), vec3<u32>(1u, 1184u, 0u), vec3<u32>(4294967295u, 1u, 43009u), vec3<u32>(1u, 27834u, 14708u), vec3<u32>(4294967295u, 47489u, 0u), vec3<u32>(1u, 16178u, 0u), vec3<u32>(0u, 0u, 107512u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(98847u, 4294967295u, 4294967295u), vec3<u32>(23226u, 17372u, 52920u), vec3<u32>(75176u, 19158u, 0u), vec3<u32>(16662u, 1u, 2264u), vec3<u32>(0u, 4294967295u, 16968u), vec3<u32>(60769u, 37247u, 1u), vec3<u32>(0u, 4294967295u, 7332u), vec3<u32>(10370u, 52616u, 1u), vec3<u32>(4294967295u, 23435u, 0u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>) -> vec2<f32> {
    var var_0 = u_input.b;
    var_0 = u_input.b;
    var var_1 = global0[_wgslsmith_index_u32(0u, 6u)];
    global1 = array<vec3<u32>, 22>();
    var var_2 = u_input.d;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1523f * -681f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -318f) - _wgslsmith_f_op_f32(-866f + -315f)))));
}

fn func_3() -> u32 {
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    var var_0 = ~(~(~min(vec3<u32>(0u, u_input.c.x, u_input.c.x) ^ u_input.c.wzz, ~global1[_wgslsmith_index_u32(29757u, 22u)])));
    var var_1 = 8640u;
    var var_2 = Struct_2(vec2<bool>(!any(select(vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(var_0.x, 6u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(var_0.x, 6u)]), vec3<bool>(true, true, true))), true), Struct_1(select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(20822u, 6u)], global0[_wgslsmith_index_u32(var_0.x, 6u)], false), vec3<bool>(false, global0[_wgslsmith_index_u32(893u, 6u)], global0[_wgslsmith_index_u32(0u, 6u)]), global0[_wgslsmith_index_u32(3684u, 6u)]), vec3<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 6u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(24996u, 6u)], global0[_wgslsmith_index_u32(var_0.x, 6u)])), vec3<bool>(!global0[_wgslsmith_index_u32(86508u, 6u)], global0[_wgslsmith_index_u32(0u, 6u)], any(vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 6u)], global0[_wgslsmith_index_u32(var_0.x, 6u)], false, global0[_wgslsmith_index_u32(35508u, 6u)]))), !(!vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 6u)], global0[_wgslsmith_index_u32(43755u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)]))), _wgslsmith_f_op_f32(f32(-1f) * -671f), ~43950u >> (_wgslsmith_add_u32(var_0.x, u_input.a.x) % 32u), _wgslsmith_mod_u32(u_input.d | abs(2199u), u_input.d)), Struct_1(select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(93818u, 6u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 6u)], false, global0[_wgslsmith_index_u32(35616u, 6u)]), vec3<bool>(global0[_wgslsmith_index_u32(30752u, 6u)], true, global0[_wgslsmith_index_u32(103172u, 6u)]), global0[_wgslsmith_index_u32(31033u, 6u)]), true), vec3<bool>(global0[_wgslsmith_index_u32(1u, 6u)], all(vec4<bool>(false, false, global0[_wgslsmith_index_u32(32272u, 6u)], global0[_wgslsmith_index_u32(3522u, 6u)])), !global0[_wgslsmith_index_u32(var_0.x, 6u)]), select(!vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global0[_wgslsmith_index_u32(u_input.d, 6u)]), !vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 6u)], true, global0[_wgslsmith_index_u32(u_input.e, 6u)]), vec3<bool>(global0[_wgslsmith_index_u32(33019u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)], true))), -1178f, 1u, 928u));
    return 23907u;
}

fn func_2() -> Struct_2 {
    global1 = array<vec3<u32>, 22>();
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1145f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-357f)))) * -1525f);
    global1 = array<vec3<u32>, 22>();
    var var_2 = Struct_2(vec2<bool>(!var_0, !any(vec4<bool>(global0[_wgslsmith_index_u32(0u, 6u)], false, false, false))), Struct_1(!(!select(vec3<bool>(true, var_0, false), vec3<bool>(var_0, global0[_wgslsmith_index_u32(4294967295u, 6u)], var_0), var_0)), 1342f, ~(~u_input.a.x | max(46493u, u_input.c.x)), u_input.a.x), Struct_1(!(!(!vec3<bool>(false, var_0, var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-319f, -438f)))), _wgslsmith_add_u32(u_input.a.x, 4294967295u), func_3() & u_input.a.x));
    return Struct_2(var_2.c.a.yy, var_2.c, Struct_1(select(var_2.b.a, vec3<bool>(global0[_wgslsmith_index_u32(18596u, 6u)] & true, false, any(vec4<bool>(var_2.a.x, false, global0[_wgslsmith_index_u32(u_input.e, 6u)], global0[_wgslsmith_index_u32(var_2.c.c, 6u)]))), _wgslsmith_f_op_f32(trunc(-515f)) == -861f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.b)), 1f)), ~u_input.a.x, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec3<i32>(u_input.b, ~(~(u_input.b << (u_input.c.x % 32u))), i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -47815i, 29191i, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, 0i))), -abs(-vec2<i32>(u_input.b, u_input.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_sub_i32(-1i, i32(-1i) * -2147483647i), ~u_input.c.yx))), func_2());
    let var_1 = var_0.d;
    let var_2 = abs(29722u);
    let x = u_input.a;
    s_output = StorageBuffer(-1i & _wgslsmith_mod_i32(select(abs(u_input.b), ~1i, !var_0.d.a.x), -16530i), min(var_0.b.x, ~firstLeadingBit(var_0.a.x)), ~var_0.a.zx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(267f, 319f) * _wgslsmith_f_op_vec2_f32(floor(var_0.c)))))), vec4<f32>(-865f, 981f, -701f, _wgslsmith_f_op_f32(f32(-1f) * -172f)));
}

