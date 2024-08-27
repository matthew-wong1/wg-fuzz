struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 29>;

var<private> global1: array<vec3<bool>, 2>;

var<private> global2: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global3: array<i32, 14> = array<i32, 14>(1902i, -30492i, 1i, -46376i, 10489i, 1i, -26712i, -1143i, 2147483647i, -29798i, 1i, -4981i, 49594i, 14691i);

var<private> global4: Struct_1 = Struct_1(vec3<u32>(4294967295u, 27996u, 38344u), vec4<i32>(-18122i, 42338i, 6068i, 1i), vec2<bool>(true, false));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_3) -> vec3<bool> {
    var var_0 = global4.a.x;
    global3 = array<i32, 14>();
    let var_1 = arg_0.c;
    global3 = array<i32, 14>();
    global0 = array<vec3<f32>, 29>();
    return global2.zww;
}

fn func_3(arg_0: bool, arg_1: bool) -> bool {
    let var_0 = Struct_2(1u, vec2<bool>(global2.x, global2.x), global4.a.x, max(reverseBits(vec4<u32>(u_input.a, _wgslsmith_add_u32(9279u, u_input.a), 1u ^ u_input.a, _wgslsmith_clamp_u32(u_input.a, global4.a.x, u_input.a))), ~(vec4<u32>(59312u, 33334u, u_input.a, global4.a.x) >> ((vec4<u32>(u_input.a, 4294967295u, 0u, 85185u) >> (vec4<u32>(u_input.a, 49097u, u_input.a, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u)))));
    var var_1 = vec3<bool>(func_2(Struct_3(global4.a.x, ~vec2<u32>(var_0.d.x, 0u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(608f, 1133f, 1019f)), Struct_1(global4.a, vec4<i32>(-2147483647i, global3[_wgslsmith_index_u32(global4.a.x, 14u)], global4.b.x, -5268i), select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, global4.c.x), vec2<bool>(arg_0, false))))).x, all(global4.c), false != !(!(!arg_1)));
    global1 = array<vec3<bool>, 2>();
    global0 = array<vec3<f32>, 29>();
    global2 = !(!select(select(!vec4<bool>(true, false, global2.x, false), select(vec4<bool>(var_1.x, false, arg_1, arg_1), vec4<bool>(true, false, false, false), false), !vec4<bool>(false, arg_1, var_1.x, arg_1)), vec4<bool>(var_0.b.x, !arg_0, true, true), (4294967295u >> (0u % 32u)) > var_0.c));
    return arg_1;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_2) -> vec2<u32> {
    let var_0 = arg_1.d.b.x;
    var var_1 = _wgslsmith_f_op_f32(665f * _wgslsmith_f_op_f32(arg_1.c.x - 1211f));
    var var_2 = arg_1.c.x;
    let var_3 = Struct_4(select(!vec3<bool>(true, any(vec4<bool>(global4.c.x, global4.c.x, arg_1.d.c.x, global2.x)), true), !select(select(vec3<bool>(true, global4.c.x, false), global1[_wgslsmith_index_u32(4294967295u, 2u)], true), func_2(arg_1), vec3<bool>(global2.x, global4.c.x, true)), true), !(!vec4<bool>(arg_2.c >= 4294967295u, false, all(vec2<bool>(true, false)), func_3(false, true))), func_2(Struct_3(21420u, vec2<u32>(_wgslsmith_mult_u32(u_input.a, arg_2.a), _wgslsmith_sub_u32(1u, arg_1.a)), vec3<f32>(_wgslsmith_f_op_f32(-1255f - 526f), _wgslsmith_f_op_f32(arg_1.c.x * -1653f), arg_1.c.x), arg_1.d)).zx, arg_2);
    var var_4 = vec2<bool>(true, !(!(!(!global4.c.x))));
    return global4.a.zz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_mult_vec2_u32(~max(func_1(vec3<i32>(-27561i, u_input.b.x, u_input.c), Struct_3(4294967295u, vec2<u32>(74892u, u_input.a), vec3<f32>(-159f, -646f, -165f), Struct_1(global4.a, vec4<i32>(global3[_wgslsmith_index_u32(56148u, 14u)], 789i, -2018i, -1i), vec2<bool>(global4.c.x, true))), Struct_2(50121u, global4.c, 7300u, vec4<u32>(66196u, u_input.a, 4294967295u, u_input.a))), global4.a.yy << (global4.a.zx % vec2<u32>(32u))), vec2<u32>(~_wgslsmith_dot_vec2_u32(global4.a.yy, global4.a.zz), u_input.a)));
}

