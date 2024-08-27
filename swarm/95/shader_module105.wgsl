struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec4<bool>,
    d: Struct_2,
    e: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 10>;

var<private> global1: Struct_5;

var<private> global2: Struct_3 = Struct_3(Struct_2(true, Struct_1(vec4<u32>(7079u, 1u, 53653u, 46250u), vec2<i32>(0i, 1i), vec2<i32>(2147483647i, 2147483647i), vec2<f32>(-379f, -787f)), Struct_1(vec4<u32>(57718u, 7480u, 16511u, 1u), vec2<i32>(1888i, -7769i), vec2<i32>(60305i, -9119i), vec2<f32>(-640f, 1000f))), Struct_1(vec4<u32>(1u, 1u, 0u, 18469u), vec2<i32>(3470i, 1i), vec2<i32>(0i, 40083i), vec2<f32>(-1187f, 1227f)), vec4<i32>(2147483647i, 68544i, -1i, -23588i));

var<private> global3: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(1579f, 239f), vec2<f32>(1729f, 498f), vec2<f32>(1500f, 273f), vec2<f32>(-220f, 1403f), vec2<f32>(-673f, 1061f), vec2<f32>(-1000f, -453f), vec2<f32>(-2186f, -1261f), vec2<f32>(-1617f, -475f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> bool {
    let var_0 = arg_0.a.x;
    global3 = array<vec2<f32>, 8>();
    global1 = Struct_5(224f, global1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.d.x, global2.b.d.x, global2.a.c.d.x, arg_1.c.d.x))), _wgslsmith_f_op_vec4_f32(-global1.c)))), arg_1);
    global3 = array<vec2<f32>, 8>();
    let var_1 = vec4<i32>(global1.b.c.b.x, -44229i, -_wgslsmith_mult_i32(2147483647i, arg_0.b.x), u_input.b.x & -max(2147483647i << (global2.b.a.x % 32u), _wgslsmith_div_i32(-2147483647i, -44124i)));
    return any(select(select(!(!vec4<bool>(false, false, true, arg_1.a)), select(!vec4<bool>(global2.a.a, false, false, arg_1.a), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, global1.d.a, false), vec4<bool>(arg_1.a, true, false, global1.b.a)), !global2.a.a), select(select(vec4<bool>(global2.a.a, arg_1.a, false, global2.a.a), vec4<bool>(false, global1.b.a, false, global1.b.a), vec4<bool>(global2.a.a, true, global2.a.a, true)), vec4<bool>(true, true, false, global2.a.a), true | global2.a.a)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, global1.d.a, true, global2.a.a), vec4<bool>(arg_1.a, global2.a.a, true, global2.a.a), vec4<bool>(false, true, true, false)), vec4<bool>(false, global2.a.a, global1.d.a, false), -1191f >= global2.a.c.d.x), countOneBits(-2147483647i) <= global1.d.c.b.x), !vec4<bool>(true, arg_1.a, global1.d.b.d.x < global2.a.b.d.x, !global1.d.a)));
}

fn func_2() -> u32 {
    let var_0 = vec3<i32>(-43783i, -(1i ^ u_input.d), -2147483647i << (global2.b.a.x % 32u));
    let var_1 = Struct_5(-266f, Struct_2(var_0.x >= countOneBits(var_0.x), Struct_1(vec4<u32>(_wgslsmith_add_u32(u_input.a.x, 1u), ~264u, ~u_input.a.x, ~global2.a.c.a.x), _wgslsmith_sub_vec2_i32(global1.b.b.c, vec2<i32>(-5458i, -2147483647i)) << (firstTrailingBit(global2.b.a.zz) % vec2<u32>(32u)), vec2<i32>(1i, ~u_input.d), global2.b.d), global2.b), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(global1.c * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(410f, global2.a.c.d.x, global1.c.x, -209f), global1.c, vec4<bool>(global1.b.a, global2.a.a, false, false))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2583f), -748f, -357f, _wgslsmith_f_op_f32(-global1.b.c.d.x)))), Struct_2(func_3(Struct_1(vec4<u32>(1u, u_input.e, u_input.e, 3512u), reverseBits(vec2<i32>(global1.b.b.c.x, 0i)), ~global2.b.c, _wgslsmith_f_op_vec2_f32(global3[_wgslsmith_index_u32(u_input.e, 8u)] * vec2<f32>(1687f, global2.b.d.x))), Struct_2(true, global2.a.b, Struct_1(vec4<u32>(4294967295u, 159153u, 0u, global1.b.b.a.x), vec2<i32>(49742i, 5259i), u_input.b, global2.b.d)), global1.a), Struct_1(~(~global1.d.c.a), u_input.b, ~(~u_input.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(0u, 10u)], global2.b.d))), global2.b));
    var var_2 = global1.b.b;
    global0 = array<vec2<f32>, 10>();
    var var_3 = Struct_3(global2.a, global2.a.b, global2.c);
    return var_2.a.x;
}

fn func_1() -> Struct_2 {
    global0 = array<vec2<f32>, 10>();
    let var_0 = func_2();
    var var_1 = global2.a;
    var var_2 = firstTrailingBit(vec3<i32>(-(~abs(global1.d.b.c.x)), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.c, var_1.c.b.x, u_input.d), global2.c.wwx), -10962i));
    let var_3 = var_2.x;
    return global2.a;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: i32) -> Struct_5 {
    global1 = Struct_5(_wgslsmith_f_op_f32(trunc(global1.a)), global1.d, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(global1.c, _wgslsmith_f_op_vec4_f32(ceil(global1.c))))), func_1());
    var var_0 = vec2<i32>(u_input.b.x, -arg_3 >> (20725u % 32u));
    global1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.b.d.x * global2.a.c.d.x))), func_1(), _wgslsmith_f_op_vec4_f32(step(global1.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-677f, -1025f, global2.b.d.x, 1274f) + vec4<f32>(arg_1.c.d.x, 762f, 1318f, global2.a.b.d.x))) * vec4<f32>(global2.b.d.x, _wgslsmith_f_op_f32(global1.b.b.d.x * 194f), global2.b.d.x, -1850f)))), global1.b);
    global3 = array<vec2<f32>, 8>();
    let var_1 = global1.b.c.a.x;
    return Struct_5(_wgslsmith_f_op_f32(abs(2566f)), Struct_2(!(all(vec4<bool>(global1.d.a, true, global1.b.a, global2.a.a)) | false), func_1().c, global2.a.b), _wgslsmith_f_op_vec4_f32(global1.c + vec4<f32>(global2.a.c.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1042f, 1308f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c.x, 494f) + global1.a), _wgslsmith_div_f32(global2.b.d.x, _wgslsmith_f_op_f32(f32(-1f) * -422f)))), Struct_2(any(vec4<bool>(false, global2.a.a, !arg_2.x, true)), global2.a.c, global2.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 10>();
    global1 = func_4(~4294967295u, func_1(), !select(select(vec3<bool>(global2.a.a, global2.a.a, global1.b.a), vec3<bool>(global2.a.a, false, global2.a.a), global1.d.a), select(!vec3<bool>(global1.d.a, global2.a.a, false), select(vec3<bool>(global2.a.a, false, global2.a.a), vec3<bool>(true, false, true), vec3<bool>(global2.a.a, true, true)), true), true), -firstTrailingBit(min(1i, -u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

