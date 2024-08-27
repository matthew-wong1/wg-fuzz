struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<i32>(4448i, -49174i, 2147483647i), -1i, vec2<bool>(true, true)), Struct_1(vec3<i32>(1i, 2147483647i, 37748i), 0i, vec2<bool>(false, true)));

var<private> global1: array<vec4<f32>, 20> = array<vec4<f32>, 20>(vec4<f32>(-768f, -119f, 1142f, -336f), vec4<f32>(481f, -385f, 382f, -2033f), vec4<f32>(674f, -1000f, -727f, -1000f), vec4<f32>(-272f, -1064f, 1000f, -435f), vec4<f32>(-303f, -1535f, -1247f, -562f), vec4<f32>(-922f, 469f, 2037f, -550f), vec4<f32>(-694f, -714f, 533f, 1285f), vec4<f32>(264f, 1405f, -1583f, 1185f), vec4<f32>(654f, -1459f, 741f, -371f), vec4<f32>(-491f, -295f, 1173f, -1173f), vec4<f32>(832f, -1845f, -525f, 1237f), vec4<f32>(-142f, 237f, 434f, -786f), vec4<f32>(-234f, -290f, 1000f, 1674f), vec4<f32>(-2293f, -330f, 2342f, 1151f), vec4<f32>(-1249f, -318f, 946f, -971f), vec4<f32>(383f, -1526f, -148f, -529f), vec4<f32>(592f, 167f, -130f, 2069f), vec4<f32>(352f, 1000f, 1000f, 415f), vec4<f32>(2050f, 685f, -1678f, -259f), vec4<f32>(2202f, 1437f, 704f, 1610f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_1 {
    var var_0 = global0.a.a;
    global1 = array<vec4<f32>, 20>();
    global1 = array<vec4<f32>, 20>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-804f))))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(884f, _wgslsmith_f_op_f32(trunc(953f))))))) < 968f;
    var var_2 = global0.a;
    return global0.b;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: f32) -> Struct_2 {
    let var_0 = func_2(-(~countOneBits(u_input.d.x)), arg_0);
    global1 = array<vec4<f32>, 20>();
    global1 = array<vec4<f32>, 20>();
    var var_1 = Struct_3(Struct_2(var_0, global0.b), Struct_2(global0.b, var_0), 0u);
    global1 = array<vec4<f32>, 20>();
    return Struct_2(func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, var_0.a.x, global0.b.b, var_0.a.x) >> (vec4<u32>(4294967295u, 4294967295u, var_1.c, 0u) % vec4<u32>(32u)), vec4<i32>(firstLeadingBit(var_0.b), -1540i, global0.a.b, ~24218i)), true), Struct_1(var_0.a, -18267i, vec2<bool>(arg_0, any(!vec4<bool>(false, global0.b.c.x, true, global0.a.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(global0.b.c.x && false, _wgslsmith_clamp_u32(u_input.b, ~_wgslsmith_div_u32(1u, abs(19959u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.b), ~(~vec3<u32>(41349u, 26564u, u_input.c.x)))), _wgslsmith_f_op_f32(-1220f + 1276f));
    let var_0 = func_1(false, ~24047u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -346f)))).b;
    global1 = array<vec4<f32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(1u, func_2(-1i, true).b);
}

