struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec3<u32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_2,
    e: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13>;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec4<i32>(15317i, 28286i, i32(-2147483648), 31746i), vec3<i32>(-1i, i32(-2147483648), -1i), vec2<bool>(false, false), 24690u), Struct_1(vec4<i32>(-1i, 0i, 1i, 7175i), vec3<i32>(18906i, -1i, i32(-2147483648)), vec2<bool>(true, true), 52884u), Struct_1(vec4<i32>(26058i, i32(-2147483648), i32(-2147483648), -66856i), vec3<i32>(15789i, -1i, -1i), vec2<bool>(false, true), 0u), Struct_1(vec4<i32>(-27255i, -1i, -4752i, i32(-2147483648)), vec3<i32>(-3229i, 0i, -1i), vec2<bool>(false, false), 1u), Struct_1(vec4<i32>(-34788i, 2147483647i, 28514i, 0i), vec3<i32>(-1i, 992i, 2147483647i), vec2<bool>(false, false), 4294967295u), Struct_1(vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), -40427i), vec3<i32>(-5885i, 4869i, -4672i), vec2<bool>(false, false), 1u), Struct_1(vec4<i32>(0i, 2147483647i, 0i, 0i), vec3<i32>(-1i, 1i, -1932i), vec2<bool>(true, true), 0u), Struct_1(vec4<i32>(15365i, i32(-2147483648), -25431i, -9600i), vec3<i32>(i32(-2147483648), 51256i, -40214i), vec2<bool>(true, true), 24856u));

var<private> global2: Struct_3 = Struct_3(Struct_2(Struct_1(vec4<i32>(2147483647i, 1i, 0i, 43325i), vec3<i32>(16366i, 80237i, 2147483647i), vec2<bool>(true, true), 12042u), 2147483647i, Struct_1(vec4<i32>(1i, 17468i, 0i, 0i), vec3<i32>(2147483647i, 0i, 46882i), vec2<bool>(true, false), 43078u), vec3<u32>(35501u, 1u, 4294967295u), 7881u), vec4<bool>(true, false, false, false), Struct_1(vec4<i32>(-42137i, 1i, 20611i, 1i), vec3<i32>(-1i, i32(-2147483648), 0i), vec2<bool>(false, false), 42750u), Struct_2(Struct_1(vec4<i32>(0i, i32(-2147483648), i32(-2147483648), -5575i), vec3<i32>(1i, -1i, 0i), vec2<bool>(false, false), 20842u), -9125i, Struct_1(vec4<i32>(0i, 0i, 0i, -884i), vec3<i32>(-20933i, 0i, 1i), vec2<bool>(true, false), 4294967295u), vec3<u32>(0u, 4294967295u, 812u), 12524u), vec3<u32>(121696u, 11447u, 1u));

var<private> global3: array<vec2<f32>, 5> = array<vec2<f32>, 5>(vec2<f32>(-190f, 1082f), vec2<f32>(313f, -800f), vec2<f32>(-1181f, -497f), vec2<f32>(-1580f, -1691f), vec2<f32>(-459f, -1448f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec2<u32>, arg_3: Struct_4) -> f32 {
    global3 = array<vec2<f32>, 5>();
    global2 = arg_0;
    return _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b.x - arg_3.b.x)) + arg_3.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~(55058u << (select(global0[_wgslsmith_index_u32(global2.c.d, 13u)], global2.d.a.d, true) % 32u)), 6934u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-287f - -490f), _wgslsmith_f_op_f32(1624f * -946f), _wgslsmith_f_op_f32(func_1(Struct_3(global2.d, vec4<bool>(true, true, global2.c.c.x, false), global1[_wgslsmith_index_u32(1612u, 8u)], Struct_2(global1[_wgslsmith_index_u32(u_input.c.x, 8u)], -2147483647i, global2.a.c, vec3<u32>(50566u, u_input.c.x, global2.e.x), 0u), vec3<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 13u)], 9591u, 4294967295u)), vec4<i32>(18934i, u_input.b, global2.d.b, 42210i), vec2<u32>(global2.e.x, 8953u), Struct_4(4012i, vec3<f32>(-448f, 831f, -249f), global0[_wgslsmith_index_u32(1u, 13u)], vec4<u32>(40970u, 1u, u_input.c.x, 17497u)))), 281f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-189f, 1000f, -470f, -1063f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-469f, -154f, -556f, 183f), vec4<f32>(308f, -697f, -635f, 1000f), vec4<bool>(true, global2.d.c.c.x, true, false)))), vec4<f32>(1f, 1f, 1f, 1f), !vec4<bool>(global2.d.a.c.x, true, true, global2.c.c.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1228f, -1202f, -1065f, 1138f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1495f, -846f, 1949f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(141f, -938f, -438f, -1035f))))));
}

