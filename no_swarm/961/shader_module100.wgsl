struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(i32(-2147483648), 0i, -28049i, 2147483647i), -576f, Struct_1(vec3<bool>(false, true, true), -661f, vec3<i32>(1i, -47519i, i32(-2147483648)), 1139f), -1345f, Struct_1(vec3<bool>(true, true, false), 883f, vec3<i32>(-1i, 56678i, 0i), 1130f));

var<private> global1: Struct_1;

var<private> global2: bool = true;

var<private> global3: array<u32, 1> = array<u32, 1>(1u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = ~firstTrailingBit(u_input.a.x);
    global2 = !(!(!((0i ^ global1.c.x) >= abs(global1.c.x))));
    global0 = Struct_2(global0.a, 308f, global0.e, 427f, global0.e);
    let var_1 = Struct_3(select(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(1778u, 1u)], 0u, 1u, global3[_wgslsmith_index_u32(44521u, 1u)]), u_input.a), vec4<u32>(reverseBits(4781u), _wgslsmith_mult_u32(0u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 1u)], 1u)], global3[_wgslsmith_index_u32(u_input.a.x, 1u)]), u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(1562u, 4294967295u), u_input.a.wy))), min(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(7276u, 23184u, global3[_wgslsmith_index_u32(0u, 1u)])), u_input.a.xxw), ~11403u), global1.a.x), global0.e);
    var var_2 = var_1;
    return ~global3[_wgslsmith_index_u32(min(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 36401u) ^ u_input.a.xz, u_input.a.wz | vec2<u32>(var_1.a, 4294967295u)), max(~global3[_wgslsmith_index_u32(var_2.a, 1u)], var_2.a >> (var_2.a % 32u))), 1u)] & (~0u | abs(firstLeadingBit(~u_input.a.x)));
}

fn func_2() -> Struct_3 {
    let var_0 = false;
    let var_1 = 36192u | func_3();
    let var_2 = global0.c;
    global2 = global0.c.a.x;
    global2 = !(global0.c.a.x || !var_0);
    return Struct_3(~1u, Struct_1(select(vec3<bool>(false, true, global1.a.x), select(select(global1.a, vec3<bool>(false, false, false), var_2.a.x), select(global1.a, vec3<bool>(true, false, true), global0.e.a), 1000f == global1.b), var_2.a), _wgslsmith_f_op_f32(-var_2.d), global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + 206f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(201f - global0.e.d)))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    var var_1 = 279f;
    var var_2 = func_2();
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.d)));
    let var_3 = Struct_2(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -866f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1874f)) * _wgslsmith_f_op_f32(step(1823f, _wgslsmith_f_op_f32(step(global1.b, 257f)))))), var_2.b, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -400f), 1f))), var_0.b);
    return func_2().b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.e.c.x;
    let var_1 = global0.b;
    let var_2 = func_1();
    var var_3 = Struct_3(~0u, Struct_1(vec3<bool>(global0.c.a.x, false, global1.a.x), -376f, ~_wgslsmith_sub_vec3_i32(firstTrailingBit(global0.e.c), ~global1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) - _wgslsmith_f_op_f32(-1000f * var_2.b))));
    global3 = array<u32, 1>();
    var var_4 = var_3.b;
    let var_5 = 1u >> (u_input.a.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(468f, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 49459u, ~select(u_input.a.x, global3[_wgslsmith_index_u32(4294967295u, 1u)], false), 0u), ~vec4<u32>(1u, 1u, u_input.a.x, 1u)), 1u)], vec3<i32>(global0.a.x, -var_4.c.x, 1i));
}

