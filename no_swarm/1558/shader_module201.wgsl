struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: i32 = -1i;

var<private> global2: Struct_2;

var<private> global3: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(4294967295u, 8553u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(35218u, 0u), vec2<u32>(0u, 1u), vec2<u32>(62968u, 1u), vec2<u32>(1u, 65360u), vec2<u32>(4294967295u, 47889u), vec2<u32>(2589u, 4294967295u), vec2<u32>(16266u, 55655u), vec2<u32>(25930u, 33861u), vec2<u32>(4294967295u, 10486u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 15680u), vec2<u32>(101903u, 1u), vec2<u32>(9068u, 1u), vec2<u32>(1u, 76115u), vec2<u32>(0u, 4294967295u), vec2<u32>(10040u, 4294967295u), vec2<u32>(44852u, 34363u), vec2<u32>(0u, 25152u), vec2<u32>(93185u, 15361u), vec2<u32>(4294967295u, 56478u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = global2.b;
    let var_1 = global2.b;
    let var_2 = firstTrailingBit(-2147483647i);
    var var_3 = select(vec2<bool>(false, !arg_1.d.x), !select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(global0.b.d.x, arg_1.d.x), !(!var_0.d.yx)), vec2<bool>(all(vec3<bool>(global2.b.d.x, true, all(var_1.d))), var_0.d.x));
    global3 = array<vec2<u32>, 22>();
    return vec2<bool>(global2.b.d.x, global0.b.d.x);
}

fn func_2() -> Struct_2 {
    let var_0 = all(select(global2.b.d.xw, global0.b.d.xy, select(select(global0.b.d.yx, global0.b.d.wz, global2.b.d.xw), func_3(-834f, global0.b), any(global0.b.d)))) & global0.b.d.x;
    global3 = array<vec2<u32>, 22>();
    global3 = array<vec2<u32>, 22>();
    global1 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-_wgslsmith_mult_i32(-2147483647i, global0.b.b), ~(-11913i), _wgslsmith_div_i32(_wgslsmith_div_i32(-4936i, global0.b.b), select(global2.b.b, 32519i, var_0))), select(abs(vec3<i32>(-2147483647i, global2.b.b, 22346i) ^ vec3<i32>(-2147483647i, global0.b.b, -30009i)), vec3<i32>(1i, -44265i ^ global0.b.b, ~2147483647i), global2.b.d.ywy)), vec3<i32>(global2.b.b << (_wgslsmith_mod_u32(global2.b.c, 61420u) % 32u), ~(i32(-1i) * -global0.b.b), -(~(-14866i)) | global0.b.b));
    var var_1 = vec3<bool>(true, true | (global0.b.d.x && global2.b.d.x), global2.b.d.x && true);
    return Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.a, global2.b.a, 623f, global0.b.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a + global0.a) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-543f, global0.b.a, 909f, -1057f)))), any(!global2.b.d.ww))), global2.a), global2.b);
}

fn func_1() -> bool {
    global2 = func_2();
    global1 = firstLeadingBit(global2.b.b & ~global0.b.b);
    global3 = array<vec2<u32>, 22>();
    let var_0 = vec2<bool>(false, !(global0.b.c < global2.b.c));
    let var_1 = func_2().b;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.b;
    var_0 = global0.b;
    var var_1 = !func_1();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(494f)) + 1720f), ~(-_wgslsmith_sub_i32(1i & var_0.b, 0i)), _wgslsmith_dot_vec3_u32(u_input.a, ~countOneBits(vec3<u32>(0u, 0u, 62577u))), select(vec4<bool>(func_3(_wgslsmith_div_f32(var_0.a, -1242f), global0.b).x, all(select(vec2<bool>(false, false), vec2<bool>(var_0.d.x, global0.b.d.x), var_0.d.wx)), true, true), !var_0.d, global0.b.d));
    var_1 = true;
    var var_3 = _wgslsmith_f_op_f32(abs(var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-var_2.b, select(global2.b.b, var_0.b, func_1())), _wgslsmith_f_op_vec2_f32(vec2<f32>(882f, _wgslsmith_f_op_f32(global0.b.a * _wgslsmith_f_op_f32(-var_2.a))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(global0.a.yy)), _wgslsmith_f_op_vec2_f32(global0.a.xw * vec2<f32>(global2.a.x, 340f)), vec2<bool>(true, true)))), -global0.b.b, _wgslsmith_f_op_f32(-1f));
}

