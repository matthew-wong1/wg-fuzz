struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 23> = array<vec3<i32>, 23>(vec3<i32>(-18960i, 0i, -4352i), vec3<i32>(2147483647i, -15344i, i32(-2147483648)), vec3<i32>(-3101i, 2147483647i, 51382i), vec3<i32>(2147483647i, 0i, 37250i), vec3<i32>(i32(-2147483648), 10146i, i32(-2147483648)), vec3<i32>(-30993i, 30664i, 4272i), vec3<i32>(-1i, 21431i, 36434i), vec3<i32>(2147483647i, -24792i, -37231i), vec3<i32>(1i, -37776i, i32(-2147483648)), vec3<i32>(1i, -1i, -18273i), vec3<i32>(2147483647i, 19160i, -9000i), vec3<i32>(17787i, -27852i, 26336i), vec3<i32>(-97013i, 2147483647i, -8114i), vec3<i32>(1i, 0i, 30767i), vec3<i32>(0i, -1i, -38545i), vec3<i32>(1i, -1i, 2147483647i), vec3<i32>(20295i, 0i, 32109i), vec3<i32>(1i, -1i, -45235i), vec3<i32>(2147483647i, 0i, -7391i), vec3<i32>(1i, -62604i, -1565i), vec3<i32>(14302i, 2147483647i, -1i), vec3<i32>(26783i, i32(-2147483648), -33267i), vec3<i32>(1i, -18644i, i32(-2147483648)));

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(-1i, Struct_1(-260f)), Struct_2(0i, Struct_1(-414f)), Struct_2(i32(-2147483648), Struct_1(1670f)), Struct_2(-4307i, Struct_1(-1000f)), Struct_2(-11335i, Struct_1(-1349f)), Struct_2(1i, Struct_1(-889f)), Struct_2(-1i, Struct_1(-608f)), Struct_2(0i, Struct_1(-180f)), Struct_2(i32(-2147483648), Struct_1(-1461f)), Struct_2(1i, Struct_1(1200f)), Struct_2(-1i, Struct_1(-903f)), Struct_2(-1i, Struct_1(-133f)), Struct_2(1i, Struct_1(111f)), Struct_2(-29696i, Struct_1(-1000f)), Struct_2(2147483647i, Struct_1(-2384f)), Struct_2(28305i, Struct_1(712f)), Struct_2(1488i, Struct_1(426f)), Struct_2(i32(-2147483648), Struct_1(-393f)), Struct_2(2794i, Struct_1(-1304f)), Struct_2(-1i, Struct_1(-1683f)), Struct_2(50330i, Struct_1(-231f)), Struct_2(1i, Struct_1(-483f)), Struct_2(-7519i, Struct_1(-627f)), Struct_2(14482i, Struct_1(959f)), Struct_2(-24945i, Struct_1(962f)));

var<private> global2: vec2<i32> = vec2<i32>(i32(-2147483648), -16003i);

var<private> global3: array<i32, 24>;

var<private> global4: Struct_2 = Struct_2(i32(-2147483648), Struct_1(-255f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(204f, arg_0.a, 459f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4.b.a, -856f, arg_0.a), vec3<f32>(arg_1.a, -329f, arg_0.a), true)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_1.a, arg_1.a))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1800f, global4.b.a, arg_0.a)))))));
    let var_1 = false;
    var var_2 = any(vec4<bool>(any(vec2<bool>(var_1, !var_1)), true == !(!var_1), var_1, false));
    global4 = Struct_2(-min(_wgslsmith_add_i32(-23473i, global2.x), ~countOneBits(global2.x)), arg_1);
    global4 = global1[_wgslsmith_index_u32(26191u, 25u)];
    return 2147483647i;
}

fn func_2() -> Struct_1 {
    global0 = array<vec3<i32>, 23>();
    global2 = vec2<i32>(global2.x, global2.x);
    let var_0 = -reverseBits(vec4<i32>(_wgslsmith_sub_i32(2147483647i, func_3(Struct_1(-1000f), global4.b)), reverseBits(-10291i), 68060i, -1i & (global3[_wgslsmith_index_u32(u_input.b.x, 24u)] >> (u_input.b.x % 32u))));
    var var_1 = global4.b;
    var var_2 = global4.b.a;
    return global4.b;
}

fn func_1() -> u32 {
    global3 = array<i32, 24>();
    let var_0 = u_input.c.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1698f, -155f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.b.a, global4.b.a)))));
    let var_2 = vec4<bool>(!(!any(vec2<bool>(true, true))), true, _wgslsmith_f_op_f32(869f * -902f) != _wgslsmith_f_op_f32(-global4.b.a), true);
    let var_3 = func_2();
    return abs(u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 23>();
    var var_0 = func_1();
    global1 = array<Struct_2, 25>();
    let var_1 = Struct_1(749f);
    global4 = global1[_wgslsmith_index_u32(59683u, 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(-39984i | func_3(Struct_1(_wgslsmith_f_op_f32(var_1.a * global4.b.a)), Struct_1(global4.b.a)), firstLeadingBit(u_input.c.x) >> (~abs(964u) % 32u));
}

