struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: array<vec4<u32>, 16>;

var<private> global2: array<vec3<u32>, 25> = array<vec3<u32>, 25>(vec3<u32>(4294967295u, 14758u, 4294967295u), vec3<u32>(1u, 36887u, 4294967295u), vec3<u32>(0u, 0u, 4777u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(77730u, 72144u, 0u), vec3<u32>(91799u, 13381u, 0u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(4959u, 61825u, 1u), vec3<u32>(33752u, 70600u, 12666u), vec3<u32>(4294967295u, 1u, 61151u), vec3<u32>(21015u, 0u, 1u), vec3<u32>(0u, 1u, 14208u), vec3<u32>(9740u, 0u, 4294967295u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(52182u, 5078u, 7074u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(8466u, 5249u, 1u), vec3<u32>(0u, 18596u, 4294967295u), vec3<u32>(11316u, 0u, 7961u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(4294967295u, 31350u, 7791u), vec3<u32>(29914u, 2630u, 1u), vec3<u32>(1u, 0u, 2683u), vec3<u32>(13286u, 10395u, 4294967295u), vec3<u32>(30278u, 79390u, 0u));

var<private> global3: Struct_1;

var<private> global4: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: bool) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(617f)));
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * global3.c) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c, 571f, 693f, global3.c)), Struct_1(global3.a, global3.b, -1154f)), vec4<i32>(31966i, global3.b, u_input.b, 19698i ^ u_input.b), ~4294967295u != global3.a.x))));
    var var_1 = !vec2<bool>((false & (u_input.a == 2524u)) & all(vec3<bool>(false, false, true)), u_input.b <= u_input.b);
    var_1 = vec2<bool>(true, any(!(!select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, var_1.x, false), vec3<bool>(true, false, true)))));
    let var_2 = max(u_input.c, _wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(1u, u_input.c.x)), ~u_input.c.x))) << (u_input.c % vec2<u32>(32u));
    let var_3 = Struct_1(vec4<u32>(var_2.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(3626u, 4294967295u, 32755u), vec3<u32>(1u, u_input.a, 49362u)), _wgslsmith_sub_vec3_u32(vec3<u32>(global3.a.x, 1u, var_2.x), global2[_wgslsmith_index_u32(4294967295u, 25u)])) >> (u_input.c.x % 32u), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 12197u, 17053u), vec3<u32>(4294967295u, 83950u, 1u)) ^ u_input.c.x), min(~4294967295u, ~(~0u))), -2147483647i, global3.c);
    return Struct_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.c, -302f, var_0, _wgslsmith_f_op_f32(func_3(Struct_2(vec4<f32>(var_0, var_0, 1218f, arg_0), Struct_1(vec4<u32>(79147u, var_2.x, 0u, 7776u), u_input.b, var_3.c)), vec4<i32>(-1i, 40698i, global3.b, -2147483647i), var_1.x))), vec4<f32>(global3.c, _wgslsmith_f_op_f32(max(var_0, var_3.c)), _wgslsmith_f_op_f32(func_3(Struct_2(vec4<f32>(-867f, var_0, arg_0, global3.c), Struct_1(global1[_wgslsmith_index_u32(0u, 16u)], -60180i, global3.c)), -vec4<i32>(-2147483647i, global3.b, global3.b, 1i), !var_1.x)), -2642f))), Struct_1(vec4<u32>(var_2.x, _wgslsmith_sub_u32(53880u, global3.a.x), 28860u, 1u), max(-9486i, 20626i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1290f) + global3.c) * _wgslsmith_f_op_f32(-664f * -319f))));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = true;
    global0 = array<Struct_1, 17>();
    var var_1 = func_2(_wgslsmith_f_op_f32(ceil(-599f)));
    global4 = var_1.b.b;
    global2 = array<vec3<u32>, 25>();
    return global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(~global3.a.x, 0u, ~var_1.b.a.x << (max(4294967295u, arg_0) % 32u), firstLeadingBit(arg_0)), countOneBits(global1[_wgslsmith_index_u32(u_input.c.x, 16u)]))), 17u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 16>();
    global2 = array<vec3<u32>, 25>();
    global2 = array<vec3<u32>, 25>();
    var var_0 = func_1(u_input.c.x);
    let var_1 = u_input.b;
    global3 = global0[_wgslsmith_index_u32(u_input.a, 17u)];
    var var_2 = vec2<bool>(false, any(vec2<bool>(true, true)));
    let var_3 = func_2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.c))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.c, 1000f))), 2438f));
    let var_4 = global3.a;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~max(vec3<i32>(var_1, 0i, 2147483647i), vec3<i32>(35237i, var_3.b.b, -2147483647i))));
}

