struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: i32;

var<private> global2: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = select(all(arg_1.xw), !arg_3.c, arg_2.c);
    var var_1 = -102f;
    let var_2 = 39635u | abs(arg_2.a.x);
    var var_3 = Struct_1(firstLeadingBit(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(var_2, var_2)), arg_2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1234f)) + 1949f), !var_0);
    var_1 = arg_2.b;
    return !vec4<bool>(var_0, (arg_2.c | false) == false, (~1u < max(arg_0, 16969u)) & (_wgslsmith_dot_vec3_u32(vec3<u32>(30681u, u_input.b, u_input.b), vec3<u32>(0u, 75897u, 3072u)) == 1u), all(arg_1.zy));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: u32) -> bool {
    global1 = 1i;
    global1 = select(u_input.c, ~u_input.d.x, any(select(select(func_2(arg_2.a.x, vec4<bool>(arg_2.c, arg_2.c, arg_2.c, arg_2.c), Struct_1(arg_2.a, arg_2.b, arg_2.c), arg_2), vec4<bool>(false, arg_2.c, arg_2.c, false), !arg_2.c), !vec4<bool>(false, true, arg_2.c, arg_2.c), vec4<bool>(true, true, true, true))));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -465f);
    let var_0 = arg_2.a;
    let var_1 = Struct_1(vec2<u32>(u_input.b, 10744u), arg_1.x, any(!(!(!vec4<bool>(true, arg_2.c, true, arg_2.c)))));
    return true;
}

fn func_3(arg_0: Struct_1) -> bool {
    global2 = all(!vec4<bool>(all(select(vec4<bool>(true, false, false, arg_0.c), vec4<bool>(false, arg_0.c, arg_0.c, true), vec4<bool>(arg_0.c, false, arg_0.c, arg_0.c))), any(vec2<bool>(arg_0.c, true)), arg_0.c, 2147483647i >= u_input.a.x));
    global2 = arg_0.c;
    var var_0 = 0i;
    var_0 = u_input.d.x;
    let var_1 = true;
    return !var_1 || true;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> vec2<u32> {
    let var_0 = arg_0.a;
    let var_1 = -1105f == _wgslsmith_f_op_f32(arg_0.b + -249f);
    var var_2 = arg_0;
    var var_3 = arg_0.b;
    return firstTrailingBit(vec2<u32>(~_wgslsmith_div_u32(var_0.x, ~0u), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 826f;
    var var_1 = !vec2<bool>(select(~4294967295u <= u_input.b, func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(255f, 518f, 331f)), vec3<f32>(1913f, -1304f, 489f), Struct_1(vec2<u32>(77388u, u_input.b), 340f, false), ~u_input.b), false), true);
    let var_2 = Struct_1(select(~func_4(Struct_1(vec2<u32>(u_input.b, u_input.b), 1416f, var_1.x), func_3(Struct_1(vec2<u32>(4294967295u, u_input.b), -1019f, true))), ~(~vec2<u32>(u_input.b, u_input.b)) ^ vec2<u32>(~u_input.b, ~0u), var_1.x), -574f, false);
    let var_3 = _wgslsmith_div_i32(abs(_wgslsmith_div_i32(firstTrailingBit(2147483647i), _wgslsmith_sub_i32(1i, u_input.c))), -1i) >> (~u_input.b % 32u);
    global0 = _wgslsmith_f_op_f32(floor(var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(~max(-vec4<i32>(var_3, var_3, u_input.a.x, -2147483647i) << (~vec4<u32>(var_2.a.x, 28122u, 37629u, u_input.b) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_3, 42653i, u_input.c, -72020i), vec4<i32>(u_input.d.x, -1i, 18664i, var_3) >> (vec4<u32>(24986u, 56651u, 1u, var_2.a.x) % vec4<u32>(32u)))));
}

