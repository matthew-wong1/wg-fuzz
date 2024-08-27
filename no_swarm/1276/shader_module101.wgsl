struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: Struct_5;

var<private> global2: vec2<f32> = vec2<f32>(-1115f, -140f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: bool, arg_3: vec2<i32>) -> f32 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(-var_0.b);
    var var_2 = var_0;
    let var_3 = !(!vec2<bool>(global1.c.c, any(!vec2<bool>(var_0.c.c, false))));
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global2.x)))))), var_2.a.c.b, ~var_2.c.e.c, var_0.a.c.d), arg_0.c.a.d.xy, var_0.a.b.b, arg_0.b, Struct_1(global2.x, var_0.c.a.b, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.b.c, 4294967295u, 10727u), vec3<u32>(arg_0.a.b.c, var_0.c.a.c, 1u)), var_0.a.c.c), _wgslsmith_f_op_vec4_f32(-var_2.a.b.d)));
    return _wgslsmith_f_op_f32(f32(-1f) * -527f);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_5(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-603f - global2.x) - _wgslsmith_f_op_f32(func_3(Struct_5(global1.a, -150f, Struct_2(Struct_1(1298f, true, u_input.b, global1.c.a.d), vec2<f32>(global1.a.a, global1.b), global1.c.e.b, 1000f, global1.c.e)), global1.c.a.c, false, vec2<i32>(-2147483647i, 14408i))))))), global1.c);
    return var_0.a.b;
}

fn func_1(arg_0: i32) -> Struct_5 {
    return Struct_5(global1.a, -1104f, Struct_2(func_2(), vec2<f32>(global2.x, 608f), 10860u <= global1.c.e.c, global2.x, Struct_1(global1.b, global1.a.c.b, u_input.a, global1.c.a.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-(~min(_wgslsmith_add_i32(2005i, -47529i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -13544i, 13981i), vec3<i32>(0i, 2147483647i, -5153i)))));
    var_0 = func_1(max(_wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -51822i, 15120i), _wgslsmith_sub_vec2_i32(min(vec2<i32>(-54080i, -45620i), vec2<i32>(27299i, -35186i)), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 57598i), vec2<i32>(1i, -37459i)))), 1i));
    global2 = vec2<f32>(_wgslsmith_f_op_f32(global1.c.a.a - _wgslsmith_f_op_f32(trunc(global2.x))), global1.a.b.a);
    let var_1 = func_1(~(~(-_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2059i, 1i), vec3<i32>(47842i, -17906i, 1i))))).a.c;
    var var_2 = 49128u;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(8868i).a.b.d, ~(~4294967295u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) + _wgslsmith_div_f32(-418f, -485f)), _wgslsmith_f_op_f32(-564f + global1.b))));
}

