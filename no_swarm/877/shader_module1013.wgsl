struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2> = array<u32, 2>(52253u, 50740u);

var<private> global1: Struct_2;

var<private> global2: Struct_2;

var<private> global3: array<Struct_1, 22>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec4<i32>) -> vec3<f32> {
    var var_0 = !select(global1.a, global2.a, global2.a);
    var var_1 = Struct_2(!(!global2.a));
    global1 = Struct_2(!(!global1.a));
    global0 = array<u32, 2>();
    let var_2 = 1u;
    return _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1855f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-590f)), _wgslsmith_f_op_f32(-1438f - -1896f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(927f)) - _wgslsmith_div_f32(-1200f, 470f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1379f, 1787f, -600f) - vec3<f32>(780f, 1000f, -288f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1761f * 1508f), _wgslsmith_f_op_f32(sign(-1890f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1015f, -541f, -1923f) - vec3<f32>(-1727f, 406f, -556f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1489f, -1048f, -487f))))), vec3<bool>(!all(select(vec4<bool>(var_1.a.x, true, true, var_1.a.x), vec4<bool>(global1.a.x, true, global1.a.x, arg_0), arg_0)), var_1.a.x, var_1.a.x & true)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>) -> bool {
    let var_0 = arg_0;
    global0 = array<u32, 2>();
    var var_1 = var_0;
    var var_2 = ~_wgslsmith_dot_vec3_i32(-countOneBits(vec3<i32>(u_input.a, 2147483647i, -1i)), vec3<i32>(34044i, _wgslsmith_sub_i32(u_input.a, 10166i), arg_1.x >> (global0[_wgslsmith_index_u32(20449u, 2u)] % 32u))) ^ (i32(-1i) * -2147483647i);
    let var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(924f, 597f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(407f)))), _wgslsmith_f_op_f32(max(-1635f, -431f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1816f, 422f, 655f))), !vec3<bool>(-9596i >= arg_1.x, true, false))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), vec3<f32>(-369f, -610f, 1000f), var_0.a)))), _wgslsmith_f_op_vec3_f32(func_3(select(any(vec4<bool>(global1.a.x, false, true, true)), true, global0[_wgslsmith_index_u32(13733u, 2u)] != 4294967295u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(max(max(59071u, global0[_wgslsmith_index_u32(127123u, 2u)]), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 2u)], 2u)], 2u)]), 2u)], 2u)], vec4<i32>(-1i) * -vec4<i32>(-1i, 0i, u_input.a, 1i)))))));
    return 48458u != global0[_wgslsmith_index_u32(abs(min(1u, ~global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6208u, 2u)], 2u)]), 2u)])), 2u)];
}

fn func_1() -> Struct_2 {
    let var_0 = ~min(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(20715u, 2u)] << (1328u % 32u), abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(58818u, 2u)], 2u)])), 20265u) ^ global0[_wgslsmith_index_u32(~25551u, 2u)];
    var var_1 = all(vec2<bool>(!(!func_2(Struct_2(vec3<bool>(false, global1.a.x, false)), vec2<i32>(-60498i, u_input.a))), any(select(global2.a.xz, vec2<bool>(global2.a.x, global2.a.x), select(vec2<bool>(global2.a.x, global2.a.x), global1.a.xz, global2.a.zz)))));
    global0 = array<u32, 2>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1961f, 506f, 545f, -377f), vec4<f32>(901f, 521f, -2420f, -712f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-953f, -578f, 539f, -1068f), vec4<f32>(790f, -425f, 238f, -1000f), vec4<bool>(true, global1.a.x, false, true))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2063f, -246f, 1879f, -1244f), _wgslsmith_div_vec4_f32(vec4<f32>(347f, 744f, -966f, -1144f), vec4<f32>(1815f, 1432f, -1513f, 1000f)), select(vec4<bool>(global1.a.x, false, true, true), vec4<bool>(false, true, global1.a.x, global1.a.x), true))) * vec4<f32>(1136f, 651f, _wgslsmith_f_op_f32(-327f + 682f), _wgslsmith_div_f32(-381f, -582f)))));
    var_1 = all(vec3<bool>(global1.a.x, global1.a.x, !global2.a.x));
    return Struct_2(global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~4294967295u, 2u)], 22u)];
    let var_1 = func_1();
    var var_2 = _wgslsmith_sub_i32(u_input.a, u_input.a);
    let var_3 = ~(~_wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b.x, 4294967295u, global0[_wgslsmith_index_u32(1u, 2u)]), var_0.b.yyx), vec3<u32>(4294967295u, _wgslsmith_clamp_u32(var_0.b.x, var_0.d.x, var_0.b.x), 49301u & var_0.b.x)));
    var var_4 = ~var_3 < ~(~(~4294967295u));
    let var_5 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, var_0.c.x, -820f, var_0.c.x), vec4<f32>(var_0.c.x, 543f, -226f, 283f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a, var_0.a, var_0.c.x, var_0.c.x)))))))));
    var_4 = !(-_wgslsmith_dot_vec4_i32(select(vec4<i32>(-2147483647i, -1i, -1i, 0i), vec4<i32>(-1i, u_input.a, u_input.a, u_input.a), vec4<bool>(var_0.e, var_1.a.x, var_0.e, global2.a.x)), -vec4<i32>(u_input.a, 48002i, u_input.a, u_input.a)) != 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(584f, -923f);
}

