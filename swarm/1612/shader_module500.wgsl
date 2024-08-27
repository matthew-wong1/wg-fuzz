struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(0u), Struct_1(0u), Struct_1(33655u), Struct_1(1u), Struct_1(42262u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(27507u), Struct_1(4294967295u), Struct_1(1u), Struct_1(73750u), Struct_1(0u), Struct_1(3200u), Struct_1(39224u), Struct_1(15159u), Struct_1(1u), Struct_1(88878u), Struct_1(76722u), Struct_1(57610u), Struct_1(23777u), Struct_1(6205u), Struct_1(32753u), Struct_1(12545u), Struct_1(67144u), Struct_1(5040u), Struct_1(131817u), Struct_1(0u), Struct_1(4294967295u), Struct_1(0u), Struct_1(11566u));

var<private> global1: vec2<u32>;

var<private> global2: array<bool, 23> = array<bool, 23>(false, true, false, true, false, true, true, true, true, true, true, true, false, true, true, true, true, false, false, false, false, false, false);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    global1 = ~select(vec2<u32>(_wgslsmith_add_u32(reverseBits(global1.x), ~global1.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, global1.x, u_input.a.x, 0u), vec4<u32>(u_input.c.x, 1u, 0u, 14754u) >> (vec4<u32>(2334u, 1u, 41684u, u_input.c.x) % vec4<u32>(32u)))), ~abs(u_input.c), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, ~u_input.a.x, 1u, ~global1.x), ~vec4<u32>(0u, 0u, global1.x, 21582u) | vec4<u32>(u_input.c.x, global1.x, 1u, global1.x)), 23u)]);
    var var_0 = _wgslsmith_f_op_f32(-263f - -975f);
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-815f, 819f)) + -358f), _wgslsmith_f_op_f32(-322f + -263f)))));
    global1 = vec2<u32>(1u, u_input.c.x);
    var var_2 = -_wgslsmith_mult_vec2_i32(vec2<i32>(i32(-1i) * -u_input.b.x, ~(-u_input.b.x)), abs(_wgslsmith_div_vec2_i32(u_input.b.zy, vec2<i32>(u_input.b.x, -1016i))) ^ select(u_input.b.xx, u_input.b.ww, !vec2<bool>(global2[_wgslsmith_index_u32(global1.x, 23u)], global2[_wgslsmith_index_u32(57765u, 23u)])));
    return global2[_wgslsmith_index_u32(0u, 23u)];
}

fn func_2() -> Struct_1 {
    global2 = array<bool, 23>();
    var var_0 = select(select(vec2<bool>(false, func_3()), select(!vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 23u)]), vec2<bool>(global2[_wgslsmith_index_u32(9669u, 23u)] & false, true), select(select(vec2<bool>(false, true), vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.c.x, 23u)]), vec2<bool>(global2[_wgslsmith_index_u32(global1.x, 23u)], true)), select(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.c.x, 23u)]), vec2<bool>(false, true), global2[_wgslsmith_index_u32(u_input.c.x, 23u)]), vec2<bool>(true, true))), select(vec2<bool>(u_input.a.x < global1.x, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.x, 1u), 23u)]), !(!vec2<bool>(global2[_wgslsmith_index_u32(76650u, 23u)], true)), func_3())), select(!(!(!vec2<bool>(true, global2[_wgslsmith_index_u32(31859u, 23u)]))), select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 23u)] | true, select(true, global2[_wgslsmith_index_u32(global1.x, 23u)], global2[_wgslsmith_index_u32(u_input.c.x, 23u)])), vec2<bool>(select(global2[_wgslsmith_index_u32(71930u, 23u)], global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(u_input.c.x, 23u)]), false), vec2<bool>(true, true)), select(vec2<bool>(select(true, true, global2[_wgslsmith_index_u32(global1.x, 23u)]), true), vec2<bool>(u_input.b.x > u_input.b.x, global2[_wgslsmith_index_u32(~1821u, 23u)]), global2[_wgslsmith_index_u32(~4294967295u, 23u)])), any(select(vec3<bool>(any(vec4<bool>(true, false, global2[_wgslsmith_index_u32(global1.x, 23u)], global2[_wgslsmith_index_u32(5346u, 23u)])), all(vec4<bool>(true, false, global2[_wgslsmith_index_u32(43587u, 23u)], true)), global2[_wgslsmith_index_u32(global1.x, 23u)]), !select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(0u, 23u)]), vec3<bool>(global2[_wgslsmith_index_u32(7608u, 23u)], global2[_wgslsmith_index_u32(global1.x, 23u)], true), global2[_wgslsmith_index_u32(4294967295u, 23u)]), select(!vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(global1.x, 23u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 23u)], global2[_wgslsmith_index_u32(u_input.a.x, 23u)], global2[_wgslsmith_index_u32(global1.x, 23u)]), vec3<bool>(global2[_wgslsmith_index_u32(global1.x, 23u)], true, true), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(4294967295u, 23u)], true)), vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(56157u, 23u)])))));
    var var_1 = vec3<bool>(true, func_3(), !all(vec2<bool>(any(vec2<bool>(false, false)), var_0.x)));
    var var_2 = countOneBits(-(vec4<i32>(-1i) * -u_input.b));
    return Struct_1(1u);
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> f32 {
    var var_0 = u_input.b.xzy;
    var var_1 = func_2();
    let var_2 = Struct_1(global1.x);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-929f, -245f, 353f))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-106f, 2340f, -205f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-839f, -1299f, 852f), vec3<f32>(600f, -1000f, 380f), global2[_wgslsmith_index_u32(global1.x, 23u)]))))))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-555f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -216f)), -1627f))));
    var var_4 = ~var_0.x;
    return -996f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1(u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 31u)]));
    let var_1 = -230f;
    global2 = array<bool, 23>();
    var var_2 = func_2();
    global2 = array<bool, 23>();
    let var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_1))) * vec2<f32>(var_1, _wgslsmith_f_op_f32(1127f * var_1))))), -2147483647i);
}

