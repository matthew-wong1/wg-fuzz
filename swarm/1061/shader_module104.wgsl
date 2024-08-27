struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<i32>,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(23962u, 31226u), vec2<u32>(1u, 1u), vec2<u32>(20584u, 13652u), vec2<u32>(53128u, 1u), vec2<u32>(14141u, 75900u), vec2<u32>(4294967295u, 1u), vec2<u32>(1466u, 40193u), vec2<u32>(74219u, 51164u), vec2<u32>(0u, 70371u), vec2<u32>(0u, 49139u), vec2<u32>(4294967295u, 13959u), vec2<u32>(46292u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(34210u, 1u), vec2<u32>(44977u, 74248u), vec2<u32>(9938u, 1u), vec2<u32>(1u, 29819u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = !arg_2.a.x | !(!(!(arg_2.b.x > arg_2.b.x)));
    global0 = array<vec2<u32>, 17>();
    let var_1 = u_input.a;
    global0 = array<vec2<u32>, 17>();
    var var_2 = _wgslsmith_clamp_i32((i32(-1i) * -(~arg_1.x)) >> (~var_1.x % 32u), arg_1.x, reverseBits(0i));
    return !arg_0.a.xy;
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> i32 {
    var var_0 = Struct_2(vec2<i32>(u_input.c.x, -firstTrailingBit(1i)), 11847i);
    let var_1 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(min(abs(vec3<u32>(arg_0.c, 1u, 4097u)), vec3<u32>(0u, arg_0.c, u_input.a.x)), firstTrailingBit(abs(vec3<u32>(1u, u_input.a.x, arg_0.c)))), firstLeadingBit(~(~vec3<u32>(4294967295u, arg_0.c, 1u))), vec3<u32>(~arg_0.c, abs(27637u), max(u_input.a.x, u_input.a.x)) & (countOneBits(vec3<u32>(0u, arg_0.c, 11781u)) & ~vec3<u32>(u_input.a.x, arg_0.c, arg_0.c)));
    global0 = array<vec2<u32>, 17>();
    let var_2 = Struct_3(arg_0.a.xxw);
    let var_3 = arg_0.a.x || arg_0.a.x;
    return abs(-1i << (~u_input.a.x % 32u)) ^ _wgslsmith_dot_vec4_i32(select(abs(vec4<i32>(-9736i, u_input.c.x, 11756i, var_0.b)), vec4<i32>(_wgslsmith_add_i32(2147483647i, u_input.b), var_0.b << (u_input.a.x % 32u), var_0.b, u_input.c.x), arg_0.a.x), select(vec4<i32>(var_0.a.x << (arg_0.c % 32u), -8108i, i32(-1i) * -71706i, min(var_0.a.x, arg_1)), ~(~vec4<i32>(var_0.a.x, 2147483647i, -2147483647i, 2147483647i)), true));
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_3 {
    global0 = array<vec2<u32>, 17>();
    var var_0 = Struct_2(u_input.c.xy, _wgslsmith_div_i32((_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.c.x, u_input.b, 0i), vec4<i32>(1i, 0i, 2147483647i, u_input.c.x)) ^ -4888i) >> (u_input.a.x % 32u), _wgslsmith_div_i32(~u_input.b, func_3(Struct_1(vec4<bool>(false, arg_0, arg_1, arg_0), vec4<f32>(-904f, 1676f, -1149f, 310f), 4294967295u), 16125i))));
    let var_1 = 0i;
    let var_2 = Struct_1(select(vec4<bool>(!(false && arg_1), func_1(Struct_3(vec3<bool>(arg_1, arg_0, true)), var_0.a, Struct_1(vec4<bool>(false, true, true, false), vec4<f32>(-198f, -1081f, -1739f, -271f), 0u)).x != true, arg_0, any(select(vec3<bool>(arg_0, arg_1, arg_0), vec3<bool>(arg_1, true, true), vec3<bool>(arg_0, arg_0, false)))), !(!select(vec4<bool>(false, arg_1, arg_0, true), vec4<bool>(false, false, true, arg_1), vec4<bool>(arg_0, false, true, arg_1))), !select(vec4<bool>(true, arg_0, arg_0, true), vec4<bool>(true, false, arg_1, true), vec4<bool>(false, false, true, false))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -641f), -1318f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2216f), 2435f, any(vec3<bool>(true, arg_0, arg_1)))) + 996f), _wgslsmith_f_op_f32(f32(-1f) * -1504f)), u_input.a.x);
    var_0 = Struct_2(max(u_input.c.yx, ~(-var_0.a)), i32(-1i) * -10792i);
    return Struct_3(!(!select(select(vec3<bool>(var_2.a.x, arg_1, arg_1), vec3<bool>(true, false, true), arg_1), select(vec3<bool>(true, true, var_2.a.x), vec3<bool>(true, true, arg_1), vec3<bool>(arg_1, true, false)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x ^ select(1u, 47526u, true);
    let var_1 = vec3<bool>(true, true && any(!func_1(Struct_3(vec3<bool>(true, true, false)), u_input.c.xy, Struct_1(vec4<bool>(true, true, false, false), vec4<f32>(-1103f, -2120f, 1044f, -664f), 4294967295u))), true);
    let var_2 = func_2(var_1.x, var_1.x);
    global0 = array<vec2<u32>, 17>();
    global0 = array<vec2<u32>, 17>();
    let var_3 = 37660i;
    global0 = array<vec2<u32>, 17>();
    let var_4 = vec2<bool>(var_2.a.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(max(_wgslsmith_sub_i32(49307i, -1i), u_input.b), reverseBits(abs(_wgslsmith_sub_i32(u_input.b, 1i)))), var_3);
}

