struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22>;

var<private> global1: array<vec2<i32>, 25> = array<vec2<i32>, 25>(vec2<i32>(-35232i, 28685i), vec2<i32>(8823i, i32(-2147483648)), vec2<i32>(9902i, 2147483647i), vec2<i32>(26541i, -1i), vec2<i32>(-47965i, -16274i), vec2<i32>(-12778i, -70757i), vec2<i32>(-41140i, -1i), vec2<i32>(-20670i, 1i), vec2<i32>(-1i, 3414i), vec2<i32>(-26043i, i32(-2147483648)), vec2<i32>(34537i, 1i), vec2<i32>(24703i, -31937i), vec2<i32>(-15043i, 2147483647i), vec2<i32>(52488i, -19764i), vec2<i32>(-27309i, -3282i), vec2<i32>(0i, -45094i), vec2<i32>(28387i, 2147483647i), vec2<i32>(-42883i, -1581i), vec2<i32>(-1i, 11703i), vec2<i32>(-40911i, 42652i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(40656i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(2147483647i, -22412i), vec2<i32>(50123i, -27012i));

var<private> global2: vec4<i32> = vec4<i32>(1i, -6698i, -1i, -9869i);

var<private> global3: Struct_1 = Struct_1(-1i, 10565u, 664f, 3237u);

var<private> global4: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(global4.a, -(((global4.b & vec3<i32>(10241i, -2147483647i, global2.x)) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(83193i, global2.x, global2.x), vec3<i32>(-1i, -2147483647i, 25198i))) & global4.b));
    global4 = Struct_2(global4.a, global2.xyx);
    let var_1 = Struct_2(Struct_1(26422i, 0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global4.a.c, global3.c)) + _wgslsmith_f_op_f32(min(global4.a.c, _wgslsmith_div_f32(global4.a.c, global3.c)))), u_input.a.x), ~vec3<i32>(abs(-1i), 1i, global3.a));
    global4 = Struct_2(global4.a, vec3<i32>(-(-var_1.b.x >> (_wgslsmith_add_u32(global3.d, var_0.a.d) % 32u)), global2.x ^ -(global2.x | global3.a), ~var_0.b.x));
    global0 = array<u32, 22>();
    return Struct_1(-24000i, 4294967295u, var_1.a.c, min(~u_input.a.x, u_input.a.x));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_1) -> i32 {
    return firstLeadingBit(7522i);
}

fn func_1() -> vec4<i32> {
    global0 = array<u32, 22>();
    let var_0 = Struct_2(func_2(), vec3<i32>(func_3(Struct_2(global4.a, _wgslsmith_mod_vec3_i32(global2.zww, global2.zxx)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.c, global3.c, global4.a.c) - vec3<f32>(global4.a.c, global4.a.c, 2571f)))), global4.a.c, Struct_1(_wgslsmith_sub_i32(global3.a, global3.a), global3.d, 214f, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(4294967295u, 22u)], 38818u))), _wgslsmith_div_i32(_wgslsmith_add_i32(global3.a, reverseBits(global3.a)), -29616i), -11255i));
    let var_1 = _wgslsmith_mod_i32(0i, ~_wgslsmith_dot_vec2_i32(reverseBits(max(global2.zy, global4.b.zx)), vec2<i32>(global4.a.a, global2.x)));
    global4 = Struct_2(func_2(), global4.b);
    let var_2 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, 20353i), vec2<i32>(11350i, -29646i)), countOneBits(-22218i)) & func_3(Struct_2(func_2(), vec3<i32>(var_0.a.a, global3.a, var_1)), vec3<f32>(_wgslsmith_div_f32(-835f, var_0.a.c), -1367f, global4.a.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a.c * -446f) + _wgslsmith_div_f32(global3.c, 739f)), func_2()), 37128u, _wgslsmith_f_op_f32(var_0.a.c + _wgslsmith_f_op_f32(min(1609f, _wgslsmith_f_op_f32(global4.a.c - _wgslsmith_f_op_f32(f32(-1f) * -1180f))))), abs(~1u));
    return -vec4<i32>(var_1, -1i, ~_wgslsmith_add_i32(global2.x, global2.x), ~select(-1i, 1i, var_0.a.c < -2355f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4.a;
    global2 = vec4<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(-(global4.a.a << (0u % 32u)), global3.a), -42684i), -16597i, _wgslsmith_dot_vec4_i32(-(~vec4<i32>(var_0.a, 2147483647i, global3.a, 0i) << (vec4<u32>(global0[_wgslsmith_index_u32(4936u, 22u)], 0u, 1u, var_0.b) % vec4<u32>(32u))), func_1()), 23664i);
    var var_1 = global4.a;
    var var_2 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global4.a.c, var_0.c, _wgslsmith_f_op_f32(round(func_2().c)), _wgslsmith_f_op_f32(-global3.c)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(217f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -810f))), -1809f))));
}

