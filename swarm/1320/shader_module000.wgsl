struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_4 = Struct_4(Struct_3(4294967295u, vec2<i32>(0i, -34196i), Struct_2(vec4<i32>(-1i, 1i, -11155i, -1i), 31156u, Struct_1(274f, vec3<f32>(-1032f, 634f, 118f), 1u), true)), vec2<bool>(true, false), Struct_3(7598u, vec2<i32>(35166i, 32994i), Struct_2(vec4<i32>(8154i, -54390i, 2147483647i, 22403i), 0u, Struct_1(-496f, vec3<f32>(277f, 153f, -1095f), 0u), false)));

var<private> global2: u32;

var<private> global3: array<vec2<i32>, 25> = array<vec2<i32>, 25>(vec2<i32>(2008i, 0i), vec2<i32>(1i, -1i), vec2<i32>(53123i, 30773i), vec2<i32>(20029i, 37356i), vec2<i32>(-7077i, -1i), vec2<i32>(-82961i, -25472i), vec2<i32>(1i, 1i), vec2<i32>(i32(-2147483648), -24272i), vec2<i32>(-30678i, 45629i), vec2<i32>(-38846i, i32(-2147483648)), vec2<i32>(-1i, -1i), vec2<i32>(-1i, 8663i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(i32(-2147483648), 6217i), vec2<i32>(i32(-2147483648), -11478i), vec2<i32>(2147483647i, 1i), vec2<i32>(63784i, -1i), vec2<i32>(1i, 0i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-49040i, 0i), vec2<i32>(0i, 78384i), vec2<i32>(29541i, -2017i), vec2<i32>(-66414i, -2328i), vec2<i32>(-1i, -40941i), vec2<i32>(0i, 2397i));

var<private> global4: array<vec4<u32>, 19>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<i32>) -> vec4<bool> {
    let var_0 = global1.c.c.c;
    let var_1 = max(_wgslsmith_add_u32(~(~4294967295u), _wgslsmith_sub_u32(u_input.a.x, 0u)), 1u);
    let var_2 = global1.a.c.c;
    global4 = array<vec4<u32>, 19>();
    global2 = ~firstTrailingBit(abs(global1.c.c.c.c));
    return !(!select(select(select(vec4<bool>(global1.c.c.d, true, global1.b.x, global1.b.x), vec4<bool>(global1.c.c.d, global1.a.c.d, global1.b.x, global1.c.c.d), true), select(vec4<bool>(global1.b.x, false, true, true), vec4<bool>(global1.a.c.d, false, true, false), true), !vec4<bool>(global1.c.c.d, global1.c.c.d, true, false)), vec4<bool>(false, true, global1.a.c.d, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, global1.b.x, false, global1.b.x), vec4<bool>(global1.a.c.d, global1.b.x, false, false), vec4<bool>(false, global1.b.x, global1.a.c.d, global1.b.x)), select(vec4<bool>(global1.a.c.d, global1.c.c.d, global1.b.x, false), vec4<bool>(true, false, global1.b.x, global1.c.c.d), vec4<bool>(false, false, true, true)))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: f32, arg_3: f32) -> Struct_4 {
    global4 = array<vec4<u32>, 19>();
    let var_0 = global0.c;
    var var_1 = global1.a.c;
    var var_2 = Struct_4(global1.a, vec2<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-588f)), global0.a)) < -1700f, any(!func_2(var_1.a).xx)), Struct_3(~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.a, global0.c, var_1.b) >> (vec3<u32>(4294967295u, u_input.a.x, 33121u) % vec3<u32>(32u)), ~vec3<u32>(global0.c, 18535u, var_1.b)), vec2<i32>(~(~arg_0.x), global1.c.b.x), Struct_2(vec4<i32>(_wgslsmith_div_i32(u_input.c.x, arg_1.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, 46581i), global1.c.c.a.yyx), 1i, _wgslsmith_div_i32(1i, 2147483647i)), 4294967295u, global1.a.c.c, any(select(vec3<bool>(var_1.d, var_1.d, global1.c.c.d), vec3<bool>(var_1.d, false, false), var_1.d)))));
    global4 = array<vec4<u32>, 19>();
    return Struct_4(var_2.c, var_2.b, Struct_3(u_input.a.x, -(vec2<i32>(1i, var_2.a.b.x) ^ vec2<i32>(-1i, var_1.a.x)) | vec2<i32>(global1.a.b.x, -2147483647i), Struct_2(_wgslsmith_mod_vec4_i32(var_2.c.c.a, var_1.a), min(64772u, ~2022u), Struct_1(-784f, _wgslsmith_f_op_vec3_f32(ceil(var_1.c.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), u_input.a.yz)), var_2.a.c.d)));
}

fn func_1(arg_0: vec2<u32>) -> bool {
    global2 = u_input.a.x;
    global1 = func_3(-(~((global1.a.c.a >> (vec4<u32>(arg_0.x, global0.c, u_input.a.x, global0.c) % vec4<u32>(32u))) << (vec4<u32>(global0.c, 1u, 1u, global1.a.a) % vec4<u32>(32u)))), ~select(vec3<i32>(firstTrailingBit(global1.c.c.a.x), _wgslsmith_mult_i32(u_input.c.x, global1.c.b.x), ~(-2147483647i)), -u_input.b, all(func_2(vec4<i32>(1i, -1i, 16973i, -20566i)))), _wgslsmith_f_op_f32(round(1000f)), -737f);
    var var_0 = Struct_5(global1.c);
    var var_1 = Struct_5(var_0.a);
    let var_2 = any(vec3<bool>(global1.b.x, true, var_1.a.c.d));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<i32>, 25>();
    let var_0 = vec4<bool>(func_1(_wgslsmith_add_vec2_u32(u_input.a.xy, u_input.a.xx)), !(u_input.c.x > (~global1.a.b.x << (func_3(global1.a.c.a, global1.a.c.a.ywz, global1.a.c.c.b.x, -254f).a.a % 32u))), !(global1.c.c.d || true), true);
    var var_1 = ~global3[_wgslsmith_index_u32(u_input.a.x, 25u)];
    let var_2 = var_1.x ^ -54411i;
    global3 = array<vec2<i32>, 25>();
    let var_3 = global1.c.c.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.c.c.c.b.yy)), ~(~_wgslsmith_add_u32(var_3.c, global0.c)) & (39648u ^ global1.c.c.b), ~(~min(global1.c.c.c.c, var_3.c)));
}

