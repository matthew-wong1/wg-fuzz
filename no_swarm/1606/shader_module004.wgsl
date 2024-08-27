struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

var<private> global1: Struct_1;

var<private> global2: array<i32, 15>;

var<private> global3: array<vec4<f32>, 1> = array<vec4<f32>, 1>(vec4<f32>(-642f, 1281f, 1000f, 1356f));

var<private> global4: array<u32, 6> = array<u32, 6>(4294967295u, 1u, 1u, 56692u, 28818u, 1u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> bool {
    global3 = array<vec4<f32>, 1>();
    let var_0 = any(vec3<bool>(countOneBits(u_input.b.x) > min(_wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(19565u, 6u)], 15u)], global0[_wgslsmith_index_u32(u_input.c.x, 5u)]), vec2<i32>(u_input.b.x, u_input.b.x)), global0[_wgslsmith_index_u32(countOneBits(38909u), 5u)]), global1.a, !(-2147483647i != ~u_input.b.x)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(918f * -155f))))));
    var var_2 = any(select(vec4<bool>(min(-1i, -2147483647i) >= global0[_wgslsmith_index_u32(~u_input.c.x, 5u)], all(!vec4<bool>(var_0, global1.a, var_0, global1.a)), !global1.a, var_0), select(vec4<bool>(true, !var_0, var_0 || global1.a, global1.a), select(!vec4<bool>(false, global1.a, true, var_0), !vec4<bool>(false, var_0, global1.a, false), true), global1.a), global1.a));
    var var_3 = Struct_2(Struct_1(true), global1.a, Struct_1(any(vec3<bool>(true, all(vec4<bool>(var_0, global1.a, global1.a, false)), global0[_wgslsmith_index_u32(0u, 5u)] == u_input.b.x))));
    return true;
}

fn func_2() -> Struct_2 {
    global2 = array<i32, 15>();
    global3 = array<vec4<f32>, 1>();
    global2 = array<i32, 15>();
    var var_0 = all(!(!vec2<bool>(!global1.a, false)));
    var var_1 = Struct_2(Struct_1(!any(vec3<bool>(true, global1.a, global1.a))), global1.a, Struct_1(global1.a));
    return Struct_2(var_1.c, func_3(), var_1.a);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: u32) -> vec3<i32> {
    let var_0 = func_2();
    global0 = array<i32, 5>();
    return ~arg_2 >> (~vec3<u32>(global4[_wgslsmith_index_u32(~0u, 6u)], 0u, 1u) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(global1.a);
    let var_0 = vec4<bool>(global1.a, true, true, false);
    let var_1 = max(-abs(-vec3<i32>(-1i, 16376i, -2147483647i)) | vec3<i32>(global0[_wgslsmith_index_u32(max(abs(global4[_wgslsmith_index_u32(14324u, 6u)]), 13569u), 5u)], _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global2[_wgslsmith_index_u32(4294967295u, 15u)]), vec3<i32>(7209i, -2384i, global0[_wgslsmith_index_u32(22351u, 5u)])), func_1(var_0.yyy, vec2<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 15u)], 2147483647i), vec3<i32>(global0[_wgslsmith_index_u32(4477u, 5u)], 24511i, global0[_wgslsmith_index_u32(1u, 5u)]), 4294967295u)), -2147483647i & func_1(var_0.wzz, u_input.b, vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 50292i, global2[_wgslsmith_index_u32(0u, 15u)]), 1u).x), min(vec3<i32>(~1i, ~28056i, i32(-1i) * -1i), vec3<i32>(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 6u)], 5u)], u_input.b.x), _wgslsmith_mult_i32(-2147483647i, global2[_wgslsmith_index_u32(0u, 15u)]), 29514i >> (0u % 32u))) & vec3<i32>(global0[_wgslsmith_index_u32(u_input.c.x ^ (u_input.a.x >> (6303u % 32u)), 5u)], -(-29730i << (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 6u)], 6u)] % 32u)), -2592i));
    global0 = array<i32, 5>();
    global2 = array<i32, 15>();
    var var_2 = func_2().a;
    var var_3 = select(!(!var_0.zz), vec2<bool>(true, ~_wgslsmith_add_i32(u_input.b.x, 36075i) == ~(~1i)), var_0.x);
    var var_4 = Struct_2(Struct_1(select(true, false, true) & var_2.a), func_3(), func_2().a);
    let var_5 = ~u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-662f, 219f, -1711f), vec3<f32>(-112f, 254f, -185f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(515f, -299f, -990f) - vec3<f32>(992f, 280f, -2050f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), ~global2[_wgslsmith_index_u32(u_input.c.x | 4294967295u, 15u)], vec3<i32>(-19350i, firstLeadingBit(9224i) | u_input.b.x, global0[_wgslsmith_index_u32(1u >> (global4[_wgslsmith_index_u32(780u << (u_input.a.x % 32u), 6u)] % 32u), 5u)]));
}

