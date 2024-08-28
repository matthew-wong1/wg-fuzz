struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec2<bool>,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 5>;

var<private> global1: array<vec4<f32>, 27>;

var<private> global2: array<vec4<i32>, 29>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    global2 = array<vec4<i32>, 29>();
    let var_0 = Struct_3(Struct_2(~(~u_input.a.xy)), vec2<bool>(true, any(vec2<bool>(true, true))), Struct_2(select(_wgslsmith_add_vec2_i32(~u_input.a.zx, select(vec2<i32>(u_input.a.x, -26268i), u_input.a.zx, true)), u_input.a.xz, any(select(vec2<bool>(true, true), vec2<bool>(true, false), true)))), Struct_1(!vec3<bool>(true, all(vec3<bool>(false, false, true)), true), 1u, !select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), min(-select(vec2<i32>(10996i, 0i), u_input.a.zx, vec2<bool>(true, false)), select(vec2<i32>(-2147483647i, u_input.a.x), _wgslsmith_mod_vec2_i32(u_input.a.zz, vec2<i32>(u_input.a.x, u_input.a.x)), true))), !(abs(-2359i) != abs(u_input.a.x)));
    global0 = array<Struct_3, 5>();
    var var_1 = _wgslsmith_sub_vec2_i32(max(var_0.a.a, var_0.a.a), vec2<i32>(_wgslsmith_sub_i32(-(i32(-1i) * -2147483647i), _wgslsmith_add_i32(-1i, _wgslsmith_mult_i32(u_input.a.x, -52274i))), var_0.c.a.x | 0i));
    let var_2 = var_0.d;
    return _wgslsmith_div_u32(reverseBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 13345u, var_0.d.b), vec3<u32>(35645u, 4294967295u, var_2.b)) >> (var_2.b % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.d.b, var_0.d.b, 0u) >> (vec4<u32>(var_0.d.b, u_input.c.x, 30910u, var_2.b) % vec4<u32>(32u)), vec4<u32>(var_0.d.b, var_0.d.b, u_input.c.x, u_input.b.x)))), var_2.b);
}

fn func_2(arg_0: i32, arg_1: i32) -> bool {
    let var_0 = abs(arg_0);
    var var_1 = Struct_1(!vec3<bool>(countOneBits(0u) <= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 0u, 22925u), vec4<u32>(u_input.b.x, 13822u, 57289u, u_input.b.x)), all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), true), ~(u_input.b.x >> (max(abs(0u), 1u) % 32u)), !select(vec4<bool>(true, true, true, var_0 >= 31450i), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true)), true), true), u_input.a.xx);
    let var_2 = Struct_3(Struct_2(vec2<i32>(_wgslsmith_div_i32(arg_1, u_input.a.x), -var_1.d.x)), vec2<bool>(var_1.c.x, any(vec2<bool>(false, var_1.c.x == true))), Struct_2(var_1.d), Struct_1(select(select(var_1.c.xzx, select(var_1.c.yyy, vec3<bool>(var_1.a.x, false, var_1.c.x), vec3<bool>(var_1.a.x, false, false)), var_1.c.x), select(vec3<bool>(var_1.a.x, true, var_1.c.x), !vec3<bool>(true, var_1.a.x, true), vec3<bool>(var_1.a.x, true, true)), var_1.a.x), func_3(), var_1.c, min(var_1.d, u_input.a.yz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-469f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-417f))))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -848f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-122f * 504f)))));
    return var_2.e;
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> vec2<u32> {
    global0 = array<Struct_3, 5>();
    global0 = array<Struct_3, 5>();
    global2 = array<vec4<i32>, 29>();
    let var_0 = func_2(u_input.a.x, -45446i);
    let var_1 = !select(vec3<bool>(func_2(2147483647i, -u_input.a.x), !(var_0 || false), any(vec4<bool>(false, true, arg_1, false))), vec3<bool>(false, true, var_0), vec3<bool>(true, var_0, !any(vec4<bool>(true, var_0, arg_1, false))));
    return abs(arg_0 << (vec2<u32>(0u, 1u) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 5>();
    var var_0 = u_input.b.x;
    let var_1 = 106124u;
    global0 = array<Struct_3, 5>();
    global1 = array<vec4<f32>, 27>();
    var var_2 = ~(~func_1(~vec2<u32>(60446u, u_input.b.x) | u_input.c, !(20448u > var_1)));
    let var_3 = true;
    var_0 = 67986u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, -900f, 1i);
}

