struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22> = array<u32, 22>(91341u, 4294967295u, 242u, 40004u, 1u, 4294967295u, 0u, 0u, 61833u, 4294967295u, 1u, 1u, 16954u, 41594u, 20951u, 65200u, 9778u, 0u, 4294967295u, 1u, 3285u, 36575u);

var<private> global1: array<bool, 1>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global1 = array<bool, 1>();
    var var_0 = Struct_1(u_input.d);
    var var_1 = arg_0;
    global0 = array<u32, 22>();
    global1 = array<bool, 1>();
    return _wgslsmith_add_u32(abs(min(0u, u_input.c.x)), ~1u);
}

fn func_2() -> vec2<u32> {
    global0 = array<u32, 22>();
    let var_0 = Struct_1(u_input.d);
    var var_1 = vec3<u32>(4294967295u, func_3(var_0, var_0), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5127u, 22u)], 22u)], global0[_wgslsmith_index_u32(6585u, 22u)], global0[_wgslsmith_index_u32(12246u, 22u)])), vec3<u32>(74451u, global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)]) >> (u_input.c.www % vec3<u32>(32u))), 1u, u_input.a.x));
    var var_2 = _wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, 1u)), abs(var_1.xz) | ~max(_wgslsmith_add_vec2_u32(u_input.c.zy, vec2<u32>(global0[_wgslsmith_index_u32(5880u, 22u)], var_1.x)), min(vec2<u32>(var_1.x, 10164u), vec2<u32>(26301u, u_input.a.x))));
    let var_3 = vec4<u32>(_wgslsmith_mult_u32(~25929u, ~u_input.c.x) ^ global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, 1u), 22u)], ~(~1u), var_1.x ^ ~71074u, func_3(Struct_1(var_0.a), Struct_1(var_0.a))) << (~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(29145u, 22u)], global0[_wgslsmith_index_u32(var_1.x, 22u)], var_1.x, 18286u), ~u_input.c), u_input.c, abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 1u, 30758u), vec4<u32>(u_input.c.x, global0[_wgslsmith_index_u32(0u, 22u)], var_1.x, 1589u)))) % vec4<u32>(32u));
    return var_3.xx;
}

fn func_4(arg_0: vec2<u32>, arg_1: i32) -> Struct_1 {
    global0 = array<u32, 22>();
    global0 = array<u32, 22>();
    let var_0 = select(vec4<u32>(26303u, _wgslsmith_mod_u32(~1u, min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 22u)], 22u)], global0[_wgslsmith_index_u32(1u, 22u)])) & _wgslsmith_mod_u32(countOneBits(global0[_wgslsmith_index_u32(u_input.c.x, 22u)]), 4294967295u), 4294967295u, 55386u), vec4<u32>(37932u, 0u, u_input.a.x, 4294967295u), !vec4<bool>(any(!vec3<bool>(true, global1[_wgslsmith_index_u32(arg_0.x, 1u)], true)), true, (global1[_wgslsmith_index_u32(59664u, 1u)] && global1[_wgslsmith_index_u32(50478u, 1u)]) | true, true));
    global0 = array<u32, 22>();
    let var_1 = vec4<i32>(arg_1, _wgslsmith_div_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, arg_1, arg_1, -2147483647i), abs(u_input.b)), ~0i), ~u_input.b.x | arg_1, _wgslsmith_add_i32(40297i, countOneBits(arg_1)));
    return Struct_1(i32(-1i) * -1i);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: u32) -> Struct_1 {
    global1 = array<bool, 1>();
    var var_0 = func_4(~func_2(), arg_0.x);
    var var_1 = Struct_1(reverseBits(arg_0.x));
    return func_4(~((_wgslsmith_add_vec2_u32(u_input.a, u_input.c.zz) & vec2<u32>(32919u, u_input.a.x)) & abs(u_input.c.yz)), -2475i);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = 93919u;
    let var_1 = func_1(~u_input.b.xww & vec3<i32>(abs(u_input.b.x), arg_1.a, ~(-1i << (u_input.a.x % 32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1061f, 1148f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1643f, 1000f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1165f, 886f), vec2<f32>(849f, 967f)))))), u_input.c.x);
    global1 = array<bool, 1>();
    global1 = array<bool, 1>();
    global1 = array<bool, 1>();
    return func_4(abs(vec2<u32>(~u_input.c.x ^ 48892u, 0u)), arg_2.a >> (u_input.c.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(u_input.b.wwz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1095f, 611f))), u_input.a.x), func_4(~_wgslsmith_mod_vec2_u32(vec2<u32>(105146u, 1u), u_input.a), -2147483647i), func_4(_wgslsmith_clamp_vec2_u32(u_input.c.xz, u_input.c.zw, _wgslsmith_clamp_vec2_u32(u_input.c.wz, vec2<u32>(0u, u_input.c.x), u_input.c.zz)), u_input.b.x));
    let var_1 = vec3<bool>(!(global1[_wgslsmith_index_u32(abs(abs(u_input.a.x)), 1u)] | global1[_wgslsmith_index_u32(~u_input.c.x >> (1u % 32u), 1u)]), true, global1[_wgslsmith_index_u32(max(countOneBits(_wgslsmith_mod_u32(~0u, 99386u)), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 42981u), u_input.c.yx), 22u)], ~u_input.a.x) ^ ~global0[_wgslsmith_index_u32(18477u, 22u)]), 1u)]);
    global1 = array<bool, 1>();
    global1 = array<bool, 1>();
    global1 = array<bool, 1>();
    let var_2 = ~u_input.a.x;
    global0 = array<u32, 22>();
    var var_3 = global1[_wgslsmith_index_u32(40107u, 1u)];
    global0 = array<u32, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(min(~_wgslsmith_clamp_vec3_u32(u_input.c.zyx, u_input.c.xxy, u_input.c.xyw) >> (~u_input.c.yzz % vec3<u32>(32u)), u_input.c.xxz), max(select(abs(u_input.b.zzy), u_input.b.xxy, true), vec3<i32>(-47682i, 2147483647i, select(u_input.e, 13215i, var_1.x))));
}

