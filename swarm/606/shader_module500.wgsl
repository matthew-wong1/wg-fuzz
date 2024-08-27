struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(66397u, -721f, true, vec4<bool>(false, false, true, false), vec3<bool>(true, false, false)), Struct_1(67003u, -233f, true, vec4<bool>(false, false, true, false), vec3<bool>(true, false, false)), Struct_1(4294967295u, 1522f, false, vec4<bool>(true, true, false, true), vec3<bool>(true, false, false)), Struct_1(4294967295u, 1074f, false, vec4<bool>(false, false, false, true), vec3<bool>(false, false, false)), Struct_1(1u, -933f, true, vec4<bool>(false, true, true, true), vec3<bool>(false, true, false)), Struct_1(308u, -228f, true, vec4<bool>(false, true, true, true), vec3<bool>(true, false, true)), Struct_1(5270u, 1000f, false, vec4<bool>(false, true, false, true), vec3<bool>(true, false, true)), Struct_1(1u, -1036f, false, vec4<bool>(false, false, false, false), vec3<bool>(true, true, false)), Struct_1(21620u, -1110f, false, vec4<bool>(true, true, false, true), vec3<bool>(false, true, false)), Struct_1(21355u, -1000f, true, vec4<bool>(true, true, true, false), vec3<bool>(true, true, true)), Struct_1(1u, -450f, true, vec4<bool>(true, true, false, true), vec3<bool>(false, true, false)), Struct_1(0u, 1140f, true, vec4<bool>(false, false, true, true), vec3<bool>(true, false, false)), Struct_1(33863u, -1358f, true, vec4<bool>(false, false, true, true), vec3<bool>(true, true, false)), Struct_1(4294967295u, 960f, false, vec4<bool>(true, false, false, false), vec3<bool>(false, false, false)), Struct_1(0u, 410f, false, vec4<bool>(false, false, true, true), vec3<bool>(false, true, false)), Struct_1(48484u, 1010f, true, vec4<bool>(true, false, true, false), vec3<bool>(true, true, true)), Struct_1(0u, -138f, false, vec4<bool>(true, true, false, true), vec3<bool>(true, false, false)), Struct_1(4294967295u, 796f, true, vec4<bool>(true, false, true, false), vec3<bool>(true, false, true)), Struct_1(4294967295u, -1166f, false, vec4<bool>(false, false, false, true), vec3<bool>(true, true, false)), Struct_1(4294967295u, -284f, true, vec4<bool>(false, false, false, false), vec3<bool>(true, true, false)), Struct_1(14131u, 2372f, true, vec4<bool>(false, false, true, false), vec3<bool>(true, true, false)), Struct_1(1u, 210f, true, vec4<bool>(false, true, true, true), vec3<bool>(false, true, true)), Struct_1(34803u, 1084f, false, vec4<bool>(false, false, false, true), vec3<bool>(false, false, false)), Struct_1(61518u, -1987f, false, vec4<bool>(false, true, false, false), vec3<bool>(true, true, false)), Struct_1(33995u, -906f, false, vec4<bool>(false, true, true, false), vec3<bool>(true, false, false)), Struct_1(20894u, 280f, false, vec4<bool>(false, true, false, false), vec3<bool>(false, true, false)), Struct_1(875u, 633f, false, vec4<bool>(false, false, true, false), vec3<bool>(true, true, false)));

var<private> global2: vec2<bool>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> f32 {
    global2 = vec2<bool>(global2.x, select(all(vec3<bool>(global2.x, !global2.x, !global2.x)), all(vec2<bool>(true, true)), global2.x));
    let var_0 = Struct_1(u_input.a.x, 340f, !global2.x, !vec4<bool>(true, !(!global2.x), !global2.x & global2.x, any(!vec4<bool>(true, global2.x, true, global2.x))), select(vec3<bool>(true, all(!vec2<bool>(global2.x, global2.x)), !global2.x), !(!(!vec3<bool>(true, global2.x, global2.x))), !global2.x));
    var var_1 = !vec4<bool>(global2.x, !(!(var_0.a != u_input.a.x)), !select(!global2.x, all(vec2<bool>(true, var_0.c)), var_0.d.x), false & !any(var_0.d.xzw));
    let var_2 = 30628i;
    let var_3 = u_input.a.x;
    return 132f;
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1) -> bool {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.b + arg_2.b), _wgslsmith_f_op_f32(trunc(-589f)))))) * _wgslsmith_div_f32(arg_2.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(arg_2.b, _wgslsmith_f_op_f32(func_3()))))));
    global0 = arg_2.b;
    global1 = array<Struct_1, 27>();
    let var_0 = Struct_1(~abs(76578u), _wgslsmith_f_op_f32(arg_2.b - arg_2.b), arg_1, !(!(!arg_2.d)), arg_2.e);
    global0 = -519f;
    return !all(vec3<bool>(arg_2.c != var_0.c, global2.x, !all(vec3<bool>(false, arg_1, true))));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32) -> u32 {
    let var_0 = u_input.a.xzz;
    global0 = _wgslsmith_f_op_f32(sign(976f));
    global2 = vec2<bool>(func_2(_wgslsmith_add_vec2_i32(u_input.c.yx, vec2<i32>(u_input.b.x, _wgslsmith_clamp_i32(38580i, 22915i, u_input.b.x))), false, Struct_1(~(u_input.a.x & u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1765f)) - _wgslsmith_f_op_f32(-2018f - 776f)), all(!vec4<bool>(global2.x, arg_0.x, arg_0.x, global2.x)), !vec4<bool>(true, true, global2.x, false), select(vec3<bool>(true, false, true), !vec3<bool>(global2.x, true, arg_0.x), vec3<bool>(global2.x, true, false)))), true);
    let var_1 = Struct_1(abs(~u_input.a.x), -302f, global2.x, !(!select(select(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(false, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, global2.x)), select(vec4<bool>(false, arg_0.x, global2.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, false), global2.x), vec4<bool>(true, arg_0.x, global2.x, true))), !select(select(vec3<bool>(global2.x, false, global2.x), select(vec3<bool>(false, true, arg_0.x), vec3<bool>(global2.x, arg_0.x, arg_0.x), true), false), !(!vec3<bool>(false, global2.x, arg_0.x)), global2.x));
    let var_2 = 4294967295u;
    return countOneBits(_wgslsmith_mult_u32(~(1u | var_1.a), _wgslsmith_sub_u32(1u, var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 27>();
    let var_0 = vec3<bool>(global2.x, global2.x, global2.x);
    let var_1 = u_input.a.xxz;
    var var_2 = _wgslsmith_mod_vec3_i32(u_input.b.zxx << (~vec3<u32>(func_1(var_0.yx, 22496u), 4294967295u, var_1.x) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(1i, -42001i, -1i)), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.c.x, 4490i, -1i)) >> (~var_1 % vec3<u32>(32u)), vec3<i32>(1i, u_input.b.x, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.c, u_input.b.yxw), u_input.b.yxw))));
    global1 = array<Struct_1, 27>();
    let var_3 = Struct_1(~func_1(vec2<bool>(true, true), 42606u), -334f, false, !vec4<bool>(any(var_0.yy), false, !any(vec2<bool>(true, var_0.x)), global2.x), vec3<bool>(false, var_2.x > _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, var_2.x, -1i, var_2.x), u_input.b), false));
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b, var_3.b, var_3.b));
    let var_5 = ~_wgslsmith_mod_i32(-_wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(-1i, 29345i)), u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, ~(u_input.a.x ^ func_1(vec2<bool>(global2.x, var_3.d.x), u_input.a.x))), -1655i, var_2.zx, var_1.xz);
}

