struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: i32,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec4<i32>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4>;

var<private> global1: array<Struct_3, 3>;

var<private> global2: array<u32, 1> = array<u32, 1>(21468u);

var<private> global3: array<vec4<u32>, 26> = array<vec4<u32>, 26>(vec4<u32>(24865u, 1u, 53874u, 52847u), vec4<u32>(4294967295u, 0u, 62874u, 4294967295u), vec4<u32>(29295u, 0u, 56983u, 4294967295u), vec4<u32>(0u, 4294967295u, 4294967295u, 5116u), vec4<u32>(14503u, 4294967295u, 4294967295u, 69600u), vec4<u32>(38242u, 0u, 0u, 4294967295u), vec4<u32>(1u, 14251u, 1u, 1u), vec4<u32>(4294967295u, 89250u, 22859u, 1u), vec4<u32>(0u, 100564u, 7834u, 1u), vec4<u32>(2850u, 4294967295u, 607u, 0u), vec4<u32>(4294967295u, 0u, 4294967295u, 5747u), vec4<u32>(1u, 8098u, 4294967295u, 9876u), vec4<u32>(71047u, 25271u, 4294967295u, 9297u), vec4<u32>(6543u, 24103u, 1u, 5566u), vec4<u32>(0u, 4294967295u, 41331u, 0u), vec4<u32>(4294967295u, 4294967295u, 9395u, 1u), vec4<u32>(4294967295u, 0u, 1u, 85083u), vec4<u32>(4294967295u, 1u, 24472u, 22547u), vec4<u32>(41186u, 33946u, 45476u, 10267u), vec4<u32>(0u, 52621u, 4294967295u, 0u), vec4<u32>(4294967295u, 1550u, 4294967295u, 1u), vec4<u32>(1u, 11501u, 45389u, 9124u), vec4<u32>(0u, 1u, 52122u, 1u), vec4<u32>(4294967295u, 1u, 22342u, 40362u), vec4<u32>(0u, 1u, 0u, 4294967295u), vec4<u32>(54795u, 9226u, 72513u, 4294967295u));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> f32 {
    global3 = array<vec4<u32>, 26>();
    global1 = array<Struct_3, 3>();
    global3 = array<vec4<u32>, 26>();
    global0 = array<Struct_3, 4>();
    var var_0 = vec3<bool>(true, true, true);
    return -1287f;
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    var var_0 = vec4<bool>(true, !(!(u_input.e.x != u_input.b)), arg_0.b, arg_0.d.d);
    return arg_0;
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> i32 {
    global2 = array<u32, 1>();
    let var_0 = func_2(global1[_wgslsmith_index_u32(~u_input.b, 3u)]).e;
    global1 = array<Struct_3, 3>();
    global1 = array<Struct_3, 3>();
    global2 = array<u32, 1>();
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-139f + -1569f))) * _wgslsmith_f_op_f32(func_1())), vec2<bool>(true, true), vec4<i32>(u_input.a.x, u_input.c.x, 46449i, func_3(func_2(Struct_3(304f, true, vec4<i32>(879i, 52880i, u_input.d.x, 36074i), Struct_2(true, vec2<f32>(-461f, -2443f), 2147483647i, true, true), Struct_1(1000f, vec2<bool>(false, false), u_input.d))), true)));
    let var_1 = func_2(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 1u)], 3u)]).d;
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(294f, var_0.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_1.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.x, var_1.b.x) + var_1.b)))))));
    var var_3 = select(_wgslsmith_div_vec2_u32(~vec2<u32>(countOneBits(7350u), u_input.b), ~vec2<u32>(global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(4294967295u, 1u)])), min(min(vec2<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(61009u, u_input.e.x), u_input.e.wy)), ~min(u_input.e.xw, vec2<u32>(u_input.e.x, 21801u))), vec2<u32>(_wgslsmith_mult_u32(abs(50558u), _wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 1u)], 26u)], global3[_wgslsmith_index_u32(4294967295u, 26u)])), u_input.b)), var_1.a);
    var_0 = func_2(global1[_wgslsmith_index_u32(var_3.x, 3u)]).e;
    var var_4 = var_0.c.xzw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + var_2.x)), -111f, -145f)), u_input.d.zy, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -569f)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.a)), var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1968f, 754f) - _wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_f_op_f32(ceil(-364f))), vec3<f32>(1057f, _wgslsmith_f_op_f32(-1266f - 957f), _wgslsmith_f_op_f32(-1872f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1387f))))));
}

