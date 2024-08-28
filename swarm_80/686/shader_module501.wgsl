struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 9>;

var<private> global1: array<vec3<u32>, 9>;

var<private> global2: Struct_3;

var<private> global3: Struct_4;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>) -> bool {
    let var_0 = firstLeadingBit(max(1u, u_input.d.x) << (~(~(~1u)) % 32u));
    global1 = array<vec3<u32>, 9>();
    let var_1 = ~countOneBits(vec2<i32>(arg_0, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(11596i, u_input.a.x))));
    global3 = Struct_4(global3.a, 4294967295u);
    var var_2 = Struct_4(Struct_2(!global2.a, global3.a.b, var_0), global3.a.c << (~select(~12567u, abs(1u), true) % 32u));
    return global3.a.a;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_2 {
    var var_0 = global3.a.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1713f, _wgslsmith_f_op_f32(f32(-1f) * -482f), 496f, 187f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.c, global3.a.b.b.x, global2.d.b.b.x, -382f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1837f, arg_0.b.x, global2.b.b.x, global3.a.b.b.x), vec4<f32>(global3.a.b.b.x, 772f, global2.b.b.x, -169f)))), vec4<bool>(true, all(vec2<bool>(true, false)), true, true)))));
    let var_2 = -559f;
    let var_3 = Struct_1(60132u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(546f * 1043f), 423f, 1202f), arg_0.b, global3.a.a)) * vec3<f32>(_wgslsmith_f_op_f32(var_1.x * -670f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-402f - var_1.x)), 613f)));
    let var_4 = Struct_4(Struct_2(func_3(u_input.b | 1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1))), Struct_1(1u, vec3<f32>(_wgslsmith_f_op_f32(-1195f * var_3.b.x), 261f, _wgslsmith_f_op_f32(global2.b.b.x - var_3.b.x))), _wgslsmith_mod_u32(var_3.a, ~_wgslsmith_div_u32(1u, global2.b.a))), arg_0.a);
    return global3.a;
}

fn func_1() -> vec3<i32> {
    let var_0 = Struct_4(func_2(Struct_1(_wgslsmith_add_u32(1u, ~global3.b), _wgslsmith_f_op_vec3_f32(-global3.a.b.b)), global3.a.c), ~func_2(Struct_1(u_input.e.x, global3.a.b.b), 40946u).b.a << ((u_input.e.x ^ _wgslsmith_sub_u32(1u, ~global3.b)) % 32u));
    var var_1 = Struct_4(var_0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(max(_wgslsmith_mult_u32(u_input.e.x, var_0.a.b.a), _wgslsmith_mod_u32(4294967295u, 38126u)), 19999u, u_input.e.x, ~38010u), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(38827u, 94003u, 48423u, 14379u), ~vec4<u32>(var_0.b, 4294967295u, global2.d.b.a, u_input.e.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 27547u, 4294967295u), ~vec4<u32>(0u, global3.a.b.a, 1u, var_0.b)))));
    let var_2 = var_0.a.b;
    let var_3 = ~(~(~_wgslsmith_sub_u32(4482u, _wgslsmith_mod_u32(0u, var_2.a))));
    global0 = array<vec3<i32>, 9>();
    return -(vec3<i32>(~2147483647i, -countOneBits(u_input.c), u_input.b) ^ (global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(28786u, u_input.e.x, var_3), global1[_wgslsmith_index_u32(var_0.a.c, 9u)]), 9u)] ^ -select(vec3<i32>(0i, u_input.c, u_input.c), global0[_wgslsmith_index_u32(1773u, 9u)], vec3<bool>(var_0.a.a, global3.a.a, global2.d.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = -858f;
    global0 = array<vec3<i32>, 9>();
    let var_2 = _wgslsmith_add_i32(var_0.x, _wgslsmith_div_i32(func_1().x, 2147483647i)) >= _wgslsmith_mult_i32(17017i, select(countOneBits(_wgslsmith_add_i32(10903i, u_input.b)), -(~0i), false));
    var var_3 = -744f;
    global1 = array<vec3<u32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(global3.a.b.b.yz, var_0.yx, ~global2.d.b.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(18679i, var_0.x, 2147483647i), _wgslsmith_mod_vec3_i32(func_1(), ~(~global0[_wgslsmith_index_u32(global3.b, 9u)]))), _wgslsmith_f_op_f32(-global2.c));
}

