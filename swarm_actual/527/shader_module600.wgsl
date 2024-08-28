struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: u32,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 2> = array<vec3<bool>, 2>(vec3<bool>(true, false, false), vec3<bool>(true, true, false));

var<private> global1: Struct_3;

var<private> global2: array<Struct_5, 5> = array<Struct_5, 5>(Struct_5(true, 4294967295u, 4687u, vec3<bool>(true, false, true), vec3<u32>(1u, 11018u, 47729u)), Struct_5(false, 4294967295u, 41845u, vec3<bool>(false, true, true), vec3<u32>(1u, 98704u, 0u)), Struct_5(false, 1856u, 49704u, vec3<bool>(true, true, true), vec3<u32>(0u, 0u, 24731u)), Struct_5(false, 51740u, 25264u, vec3<bool>(false, false, false), vec3<u32>(9951u, 19599u, 0u)), Struct_5(false, 84374u, 1u, vec3<bool>(true, true, true), vec3<u32>(25010u, 0u, 0u)));

var<private> global3: f32 = 1016f;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: Struct_5) -> u32 {
    var var_0 = ~(~_wgslsmith_sub_u32(abs(1u), global1.c.x));
    var var_1 = _wgslsmith_f_op_f32(-1441f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-827f, _wgslsmith_f_op_f32(-global1.b))))));
    var_0 = 4294967295u;
    let var_2 = any(!select(vec2<bool>(global1.e.x, global1.e.x), !vec2<bool>(global1.e.x, true), !global1.e.zw)) & all(select(!(!global1.e), global1.e, select(vec4<bool>(arg_1.d.x, arg_1.d.x, arg_0, true), select(vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(arg_1.d.x, global1.e.x, true, false), global1.e), all(arg_1.d.xx))));
    global2 = array<Struct_5, 5>();
    return ~arg_1.e.x;
}

fn func_2() -> vec4<bool> {
    global3 = global1.b;
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-115f, global1.b) - vec2<f32>(569f, global1.b)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, global1.b) + vec2<f32>(global1.b, -680f))))));
    let var_1 = vec4<u32>(min(~(~u_input.a.x), countOneBits(_wgslsmith_div_u32(func_3(global1.e.x, global2[_wgslsmith_index_u32(21000u, 5u)]), u_input.a.x))), ~abs(global1.c.x), u_input.a.x, 50151u);
    var var_2 = Struct_5(!((!global1.e.x && global1.e.x) & true), u_input.a.x << (~global1.c.x % 32u), _wgslsmith_add_u32(max(1u << (func_3(global1.e.x, Struct_5(true, var_1.x, var_1.x, vec3<bool>(global1.e.x, global1.e.x, global1.e.x), var_1.wzw)) % 32u), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(8840u, var_1.x), min(0u, 3525u), ~var_1.x)), 1u), !select(!vec3<bool>(true, global1.e.x, false), !select(vec3<bool>(false, global1.e.x, global1.e.x), global1.e.yxy, vec3<bool>(false, true, global1.e.x)), !(true | global1.e.x)), global1.c);
    let var_3 = Struct_1(global1.e.x, global1.a.x, ~4294967295u, abs(global1.a.x), 4294967295u);
    return vec4<bool>(true, global1.e.x, any(!(!vec4<bool>(true, true, var_2.a, var_3.a))) == true, global1.e.x);
}

fn func_1() -> Struct_2 {
    let var_0 = func_2();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-global1.b));
    global3 = _wgslsmith_f_op_f32(abs(global1.b));
    let var_2 = Struct_1(true, global1.a.x, u_input.a.x, ~(~global1.a.x), _wgslsmith_mod_u32(abs(u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.a, u_input.a)));
    global0 = array<vec3<bool>, 2>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global2 = array<Struct_5, 5>();
    let var_1 = _wgslsmith_f_op_f32(-var_0.a) == -856f;
    var var_2 = vec4<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(global1.d.zx, max(select(u_input.a, u_input.a, global1.e.yy), firstTrailingBit(vec2<u32>(global1.c.x, 1u)))), 0u, 16645u);
    var var_3 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(global1.a.zy & global1.a.zz), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(646f, -645f, var_1))))), 1097f)));
}

