struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<i32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec3<i32> = vec3<i32>(0i, 0i, -14843i);

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_sub_u32(u_input.b, countOneBits(countOneBits(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, arg_0.x, 1u)) ^ _wgslsmith_div_u32(global2.a, global2.a))));
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.e, _wgslsmith_f_op_f32(-global2.e))));
    global0 = _wgslsmith_add_i32(u_input.d.x, _wgslsmith_div_i32(~(-global1.x), min(5431i << (~4294967295u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(44937i, 0i, global1.x), global2.c.xww) & (-38656i >> (0u % 32u)))));
    var var_2 = abs(~vec3<u32>(~47754u, u_input.a.x, 4294967295u)) & ((_wgslsmith_mod_vec3_u32(select(vec3<u32>(1u, var_0, 59604u), u_input.a, true), u_input.a) << (_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.x, 18967u, u_input.a.x), abs(vec3<u32>(var_0, u_input.a.x, arg_0.x))) % vec3<u32>(32u))) & u_input.a);
    global2 = Struct_1(0u, !all(vec3<bool>(true, !global2.b, global2.b && global2.d)), vec4<i32>(global2.c.x, -(global2.c.x ^ 0i), ~(-global2.c.x), global2.c.x) >> (reverseBits(~(vec4<u32>(30819u, 4294967295u, u_input.b, u_input.b) << (vec4<u32>(var_0, 0u, 19625u, var_0) % vec4<u32>(32u)))) % vec4<u32>(32u)), true, var_1.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-956f + _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(421f - var_1.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) - _wgslsmith_f_op_f32(-global2.e))));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>) -> f32 {
    global0 = arg_0.c.x;
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1403f);
    let var_1 = Struct_3(1u);
    var var_2 = _wgslsmith_f_op_f32(func_3(u_input.a.yy));
    global2 = arg_0;
    return -1290f;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool) -> Struct_1 {
    var var_0 = !vec3<bool>(false, !arg_0.b, false);
    let var_1 = vec2<u32>(_wgslsmith_add_u32(global2.a, global2.a), _wgslsmith_div_u32(_wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(arg_0.a, u_input.b))), u_input.a.x) >> (global2.a % 32u));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.e, arg_0.e, -476f, 129f))) + vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(40962u, arg_0.d, vec4<i32>(-1i, u_input.c, -14685i, global2.c.x), true, global2.e), global2.c.x, vec3<f32>(global2.e, arg_0.e, 1000f))), -664f, _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(max(global2.e, 1000f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1336f, global2.e, 1639f, -694f))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_2, vec4<f32>(-351f, _wgslsmith_f_op_f32(sign(-1574f)), 892f, 897f)) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.e)), global2.e, _wgslsmith_f_op_f32(max(global2.e, var_2.x)), _wgslsmith_div_f32(144f, _wgslsmith_div_f32(683f, -1652f))));
    var_0 = !select(select(!vec3<bool>(true, arg_2, false), vec3<bool>(arg_2 && true, !global2.b, arg_2), !(!vec3<bool>(var_0.x, true, arg_2))), !vec3<bool>(arg_2, select(true, arg_0.b, false), arg_2), arg_2);
    return Struct_1(~(~46237u), !((_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(arg_0.a, u_input.a.x)) < reverseBits(global2.a)) || (~u_input.b >= ~var_1.x)), ~vec4<i32>(_wgslsmith_div_i32(-2147483647i, arg_0.c.x), abs(global1.x), (-3676i ^ arg_0.c.x) << (global2.a % 32u), ~0i), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(Struct_1(_wgslsmith_add_u32(select(u_input.a.x, 52927u, false), ~(~78538u)), false, ~min(max(vec4<i32>(-8765i, global2.c.x, -19556i, 41643i), vec4<i32>(global1.x, 13933i, 946i, global2.c.x)), min(u_input.d, vec4<i32>(global1.x, 61271i, -27625i, -48979i))), false, 928f), max(abs(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 43520u) & vec2<u32>(5734u, 4294967295u), max(u_input.a.xx, u_input.a.xy))), ~u_input.a.zy), false);
    global1 = vec3<i32>(global2.c.x, ~(-(~u_input.d.x)) << (12789u % 32u), 38418i);
    global1 = (vec3<i32>(u_input.c, ~u_input.c ^ 1i, firstTrailingBit(-9753i)) ^ -(u_input.d.wwz ^ vec3<i32>(global1.x, -1i, global2.c.x))) ^ (vec3<i32>(global1.x, firstTrailingBit(4749i), -global2.c.x ^ -1i) << (~max(min(vec3<u32>(4294967295u, u_input.a.x, global2.a), vec3<u32>(u_input.b, 0u, 21346u)), abs(vec3<u32>(u_input.b, 4294967295u, global2.a))) % vec3<u32>(32u)));
    var var_0 = Struct_3(~(~global2.a));
    let var_1 = _wgslsmith_f_op_f32(func_3(~u_input.a.xz));
    let x = u_input.a;
    s_output = StorageBuffer(-11027i);
}

