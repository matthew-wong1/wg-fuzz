struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
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

var<private> global0: Struct_1;

var<private> global1: i32;

var<private> global2: vec2<u32> = vec2<u32>(32485u, 5543u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global0.b)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1005f, _wgslsmith_f_op_f32(global0.b.x - global0.b.x), global0.b.x, -556f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1030f, 1615f, arg_1, 2186f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 324f, 1461f, global0.b.x)))) - vec4<f32>(288f, arg_1, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-438f)))), _wgslsmith_f_op_f32(sign(-513f)))));
    var var_1 = Struct_1(_wgslsmith_dot_vec4_u32(abs(countOneBits(u_input.a)), ~(u_input.a << ((vec4<u32>(global0.a, global2.x, global0.a, 10779u) ^ vec4<u32>(global0.a, 4294967295u, 49086u, 0u)) % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-global0.b));
    let var_2 = 492f;
    global1 = select(0i, _wgslsmith_add_i32(firstLeadingBit(u_input.b.x), u_input.c.x), true);
    global2 = u_input.a.yy;
    return arg_0;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: vec3<bool>) -> vec4<f32> {
    global0 = Struct_1(_wgslsmith_dot_vec3_u32(func_3(vec3<u32>(58813u, u_input.e, 70142u), _wgslsmith_f_op_f32(ceil(global0.b.x))), vec3<u32>(abs(1u), 1u, 34133u | _wgslsmith_mod_u32(u_input.d, 0u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, global0.b.x, global0.b.x, global0.b.x)), _wgslsmith_f_op_vec4_f32(global0.b - global0.b)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-global0.b))))));
    var var_0 = -firstTrailingBit(min(_wgslsmith_mult_i32(arg_1, arg_1), ~(-28422i)));
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(923f + _wgslsmith_f_op_f32(ceil(global0.b.x))) + _wgslsmith_f_op_f32(-global0.b.x)), -1657f), -236f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -528f))), global0.b.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_1, arg_3: vec3<u32>) -> bool {
    global0 = arg_2;
    let var_0 = Struct_1(arg_2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.b, _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_add_vec2_i32(u_input.b.xy, vec2<i32>(u_input.b.x, u_input.b.x)), 1i, vec3<bool>(true, false, true))))));
    let var_1 = any(!(!vec3<bool>(any(vec2<bool>(false, false)), all(vec3<bool>(true, true, false)), any(vec2<bool>(true, false)))));
    global2 = u_input.a.xw;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    var var_1 = any(select(!vec4<bool>(any(vec3<bool>(false, false, true)), func_1(vec2<f32>(2087f, global0.b.x), -399f, Struct_1(global0.a, global0.b), vec3<u32>(global2.x, 1u, 66577u)), true, true), vec4<bool>(global2.x > 12147u, !all(vec2<bool>(true, true)), true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(21659i));
}

