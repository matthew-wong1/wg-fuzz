struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<i32>(15735i, 1i), -78453i, 23862i, vec2<f32>(-1000f, 812f), vec3<bool>(false, false, false)));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: bool) -> u32 {
    let var_0 = -1i;
    return ~u_input.a.x;
}

fn func_2() -> vec2<u32> {
    return _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), func_3(global2.a.d.x, global2.a.e.x)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 14006u, u_input.a.x), firstLeadingBit(u_input.a.wyz)), u_input.a.x), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.wx << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))) << (~u_input.a.wz % vec2<u32>(32u)), ~(~vec2<u32>(u_input.a.x, u_input.a.x))));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: u32, arg_3: vec2<i32>) -> f32 {
    var var_0 = 918u;
    let var_1 = _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(1u, u_input.a.x) << (~vec2<u32>(1u, 998u) % vec2<u32>(32u))), func_2()), reverseBits(abs(reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, arg_2), vec2<u32>(arg_0, 23161u))))));
    global1 = abs(-_wgslsmith_div_i32(-95331i, _wgslsmith_dot_vec3_i32(vec3<i32>(-9298i, u_input.b, 2147483647i), vec3<i32>(0i, -1i, u_input.b)))) << (arg_2 % 32u);
    var var_2 = 1u;
    var_2 = _wgslsmith_dot_vec3_u32(abs(u_input.a.xxx), ~(~vec3<u32>(var_1.x, arg_0, 5871u) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_1.x, u_input.a.x), vec3<u32>(u_input.a.x, arg_2, arg_0))) >> (u_input.a.xxw % vec3<u32>(32u)));
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~abs(59286u));
    var var_1 = Struct_3(select(!select(!vec4<bool>(false, global2.a.e.x, global2.a.e.x, global2.a.e.x), select(vec4<bool>(global2.a.e.x, true, false, false), vec4<bool>(global2.a.e.x, false, false, false), true), false), !(!(!vec4<bool>(false, true, global2.a.e.x, false))), select(!(u_input.a.x <= u_input.a.x), global2.a.e.x, true & select(false, global2.a.e.x, global2.a.e.x))), 25769u);
    var var_2 = var_1.a.xyw;
    let var_3 = _wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(~u_input.b, global2.a.c ^ 67042i), global2.a.a);
    var_0 = u_input.a.x;
    var var_4 = 16346i;
    var var_5 = any(vec2<bool>(true, false));
    let x = u_input.a;
    s_output = StorageBuffer(global2.a.d.x, vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.a.d.x, 698f)) * global2.a.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(328f)) * _wgslsmith_f_op_f32(func_1(1u, Struct_2(global2.a), var_1.b, global2.a.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.d.x + -889f)) + -809f), _wgslsmith_f_op_f32(f32(-1f) * -376f)));
}

