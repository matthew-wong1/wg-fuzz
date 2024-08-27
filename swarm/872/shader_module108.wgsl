struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
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

var<private> global0: f32;

var<private> global1: array<vec2<f32>, 4>;

var<private> global2: Struct_3 = Struct_3(vec4<u32>(4294967295u, 1u, 0u, 2802u));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: bool, arg_3: i32) -> f32 {
    global1 = array<vec2<f32>, 4>();
    global2 = Struct_3(~_wgslsmith_mult_vec4_u32(vec4<u32>(~5440u, max(global2.a.x, 15722u), u_input.a & arg_0.x, countOneBits(global2.a.x)), ~vec4<u32>(4294967295u, u_input.a, u_input.a, arg_0.x)));
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(154f, 700f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(sign(arg_1)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(round(162f)))), arg_1));
    global1 = array<vec2<f32>, 4>();
    let var_1 = global2.a;
    return var_0.x;
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = _wgslsmith_mult_i32(u_input.c.x, max(abs(u_input.b.x), u_input.c.x));
    global1 = array<vec2<f32>, 4>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -564f))), 300f)) - _wgslsmith_f_op_f32(min(222f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(~vec2<u32>(4294967295u, 1u), -242f, true, 1i)), 1000f))));
    let var_2 = select(vec3<bool>(all(vec2<bool>(true, true)), all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)))), !(_wgslsmith_mod_i32(arg_0, 2147483647i) < (u_input.c.x << (4294967295u % 32u)))), vec3<bool>(select(false, true, true | any(vec2<bool>(false, false))), all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), true)), true), !any(vec2<bool>(true, true)));
    let var_3 = global2.a.x;
    return Struct_2(!any(vec4<bool>(any(vec4<bool>(true, var_2.x, false, true)), var_2.x, false, any(vec2<bool>(false, var_2.x)))), Struct_1(!((var_2.x || true) | true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1798f, 1102f)))), ~_wgslsmith_mult_vec3_i32(~vec3<i32>(var_0, 1i, u_input.d), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, 2147483647i, arg_0), vec3<i32>(u_input.c.x, u_input.b.x, u_input.b.x)))));
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_2 {
    let var_0 = arg_0;
    let var_1 = 715f;
    global1 = array<vec2<f32>, 4>();
    global1 = array<vec2<f32>, 4>();
    global1 = array<vec2<f32>, 4>();
    return func_2(min(13746i, -1i));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec3<bool>) -> u32 {
    global2 = arg_1;
    global1 = array<vec2<f32>, 4>();
    let var_0 = select(select(select(vec4<bool>(1u < arg_1.a.x, arg_2.a, true, false), select(vec4<bool>(arg_0.a, arg_3.x, false, arg_3.x), select(vec4<bool>(arg_2.b.a, true, false, arg_3.x), vec4<bool>(false, arg_2.b.a, arg_0.a, true), arg_0.a), select(vec4<bool>(arg_0.b.a, arg_0.a, arg_0.b.a, false), vec4<bool>(true, arg_2.b.a, arg_3.x, false), true)), !vec4<bool>(true, false, true, arg_3.x)), vec4<bool>(!arg_2.b.a || true, arg_1.a.x <= 1u, all(select(arg_3, arg_3, vec3<bool>(arg_3.x, arg_3.x, true))), arg_2.b.a | all(arg_3)), vec4<bool>(arg_3.x, arg_3.x, ~1u > _wgslsmith_mult_u32(u_input.a, 16750u), ~u_input.a != min(global2.a.x, 0u))), select(!vec4<bool>(true || arg_3.x, func_1(arg_2.b.b.x, u_input.a).b.a, !arg_2.b.a, true), select(vec4<bool>(all(vec4<bool>(false, false, false, arg_0.a)), arg_2.a | arg_3.x, arg_3.x, arg_3.x), vec4<bool>(any(vec3<bool>(arg_0.b.a, arg_2.b.a, true)), !arg_0.a, true, true), select(vec4<bool>(arg_3.x, arg_3.x, true, true), vec4<bool>(false, true, arg_3.x, true), !arg_2.a)), !(!vec4<bool>(arg_3.x, true, arg_0.a, arg_3.x))), select(select(!(!vec4<bool>(true, true, arg_2.b.a, true)), !(!vec4<bool>(arg_0.a, arg_3.x, arg_2.b.a, false)), vec4<bool>(false, func_1(-139f, 57196u).b.a, any(vec4<bool>(arg_2.b.a, arg_0.b.a, false, true)), true)), select(!vec4<bool>(arg_2.b.a, arg_2.b.a, true, arg_0.b.a), select(vec4<bool>(false, false, arg_0.b.a, false), vec4<bool>(arg_2.b.a, true, true, arg_0.b.a), select(false, arg_3.x, true)), vec4<bool>(all(arg_3), func_1(-1000f, u_input.a).b.a, !arg_0.b.a, true)), !all(vec4<bool>(true, true, arg_2.b.a, true)) == (~49363i > _wgslsmith_mod_i32(82851i, arg_2.c.x))));
    let var_1 = arg_2.b;
    var var_2 = -(~(-vec4<i32>(u_input.b.x, arg_0.c.x, 26447i, -1i) << (_wgslsmith_add_vec4_u32(arg_1.a, global2.a) % vec4<u32>(32u))));
    return 9338u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 4>();
    var var_0 = global2.a.x;
    var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -692f);
    var_0 = ~u_input.a;
    var_0 = ~_wgslsmith_sub_u32(global2.a.x, select(u_input.a, 1u, false) ^ func_4(func_1(-935f, 0u), Struct_3(global2.a), Struct_2(false, Struct_1(false, vec2<f32>(var_1, 297f)), vec3<i32>(u_input.b.x, 0i, u_input.b.x)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))));
    let var_2 = ~vec2<u32>(~global2.a.x, select(~u_input.a << (_wgslsmith_sub_u32(global2.a.x, global2.a.x) % 32u), 1u, -1i >= u_input.d));
    global2 = Struct_3(global2.a);
    let x = u_input.a;
    s_output = StorageBuffer(-42688i, 38609i);
}

