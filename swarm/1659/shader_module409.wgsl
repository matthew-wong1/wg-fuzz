struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 15> = array<vec3<u32>, 15>(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(4294967295u, 42630u, 24246u), vec3<u32>(4294967295u, 1u, 256u), vec3<u32>(40575u, 1u, 1u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(0u, 0u, 0u), vec3<u32>(1u, 0u, 0u), vec3<u32>(53435u, 41117u, 0u), vec3<u32>(1u, 17927u, 73927u), vec3<u32>(0u, 41851u, 7548u), vec3<u32>(29812u, 101934u, 1u), vec3<u32>(0u, 36797u, 1u), vec3<u32>(1u, 1u, 1133u), vec3<u32>(4294967295u, 67782u, 119670u), vec3<u32>(16645u, 4294967295u, 0u));

var<private> global1: array<Struct_1, 29>;

var<private> global2: array<Struct_3, 12>;

var<private> global3: Struct_3 = Struct_3(2147483647i, Struct_2(Struct_1(true, -659f, vec3<f32>(159f, -326f, -1000f), vec2<u32>(4294967295u, 1u), vec3<u32>(14306u, 4257u, 55913u)), Struct_1(true, -1948f, vec3<f32>(-1068f, -196f, 262f), vec2<u32>(47360u, 18643u), vec3<u32>(8805u, 1u, 1u)), vec3<bool>(false, true, true), -1000f));

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_3) -> vec2<i32> {
    var var_0 = Struct_3(2147483647i, global3.b);
    var var_1 = global2[_wgslsmith_index_u32(20155u, 12u)];
    global2 = array<Struct_3, 12>();
    global2 = array<Struct_3, 12>();
    var var_2 = _wgslsmith_div_f32(global3.b.a.c.x, global3.b.b.c.x);
    return abs(~max(~abs(vec2<i32>(global3.a, 20304i)), vec2<i32>(~global3.a, 20125i)));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: i32) -> bool {
    let var_0 = vec4<bool>(any(!arg_1.b.c), false, true, false);
    global0 = array<vec3<u32>, 15>();
    let var_1 = arg_2;
    var var_2 = Struct_1(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_div_f32(arg_1.b.a.c.x, arg_1.b.b.c.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.d) - -1470f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) * 1f)) - vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1081f, arg_0)), _wgslsmith_f_op_f32(-arg_1.b.d), true)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(sign(-1000f))), global3.b.a.b)), ~vec2<u32>(global3.b.a.d.x, arg_1.b.b.d.x), firstTrailingBit(select(vec3<u32>(4294967295u, 56798u, u_input.b.x) >> (u_input.b.wzz % vec3<u32>(32u)), ~vec3<u32>(1u, u_input.b.x, arg_1.b.a.d.x), true) << (u_input.b.wzw % vec3<u32>(32u))));
    let var_3 = vec4<bool>(false, var_2.d.x == 4294967295u, true, true);
    return global3.b.b.a;
}

fn func_1(arg_0: u32) -> StorageBuffer {
    let var_0 = Struct_2(global3.b.b, global1[_wgslsmith_index_u32(~(((global3.b.a.e.x << (4294967295u % 32u)) >> (min(global3.b.b.d.x, 0u) % 32u)) << (~_wgslsmith_sub_u32(arg_0, u_input.b.x) % 32u)), 29u)], global3.b.c, _wgslsmith_div_f32(1262f, _wgslsmith_f_op_f32(global3.b.a.b - global3.b.a.c.x)));
    global4 = _wgslsmith_add_u32(max(0u, _wgslsmith_mult_u32(~_wgslsmith_add_u32(arg_0, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, var_0.b.e.x, 33817u, 5485u), select(vec4<u32>(110875u, 27653u, 33091u, global3.b.b.e.x), vec4<u32>(1u, arg_0, 8030u, 0u), true)))), global3.b.a.d.x);
    let var_1 = -func_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, 0u, ~17899u, var_0.a.e.x), vec4<u32>(global3.b.a.d.x, arg_0, _wgslsmith_mod_u32(1u, 1u), min(var_0.a.e.x, 4294967295u))), 12u)]);
    let var_2 = u_input.b.xw;
    global0 = array<vec3<u32>, 15>();
    return StorageBuffer(min(select(min(abs(vec3<i32>(16178i, 1i, global3.a)), vec3<i32>(var_1.x, -12193i, var_1.x)), reverseBits(-vec3<i32>(16419i, var_1.x, 5810i)), !(1379f <= var_0.b.c.x)), select(-select(vec3<i32>(16138i, global3.a, global3.a), vec3<i32>(-1i, -1i, 2147483647i), true), firstTrailingBit(vec3<i32>(var_1.x, var_1.x, global3.a) >> (vec3<u32>(26650u, var_2.x, 1u) % vec3<u32>(32u))), func_3(_wgslsmith_f_op_f32(step(var_0.b.c.x, 1336f)), global2[_wgslsmith_index_u32(reverseBits(43994u), 12u)], -1i))), var_0.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.b.c.x;
    var var_1 = global3.b.b;
    let var_2 = var_1.e.x;
    global1 = array<Struct_1, 29>();
    global0 = array<vec3<u32>, 15>();
    let x = u_input.a;
    s_output = func_1(_wgslsmith_add_u32(var_1.e.x, ~(u_input.a ^ 18901u)));
}

