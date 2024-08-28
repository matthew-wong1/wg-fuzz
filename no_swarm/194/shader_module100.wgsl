struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
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

var<private> global0: array<f32, 10>;

var<private> global1: Struct_4;

var<private> global2: array<vec2<u32>, 4>;

var<private> global3: array<u32, 14>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: vec2<u32>) -> i32 {
    global0 = array<f32, 10>();
    var var_0 = Struct_3(arg_1.a.a, _wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(4802u, 14u)], u_input.b, arg_1.a.b) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, 49549u, u_input.e), u_input.d.ywy, u_input.d.wyw) % vec3<u32>(32u)), ~firstLeadingBit(vec3<u32>(62370u, global3[_wgslsmith_index_u32(global1.a.b, 14u)], 4294967295u))) >> (_wgslsmith_div_u32(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(~36279u, 14u)], _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global3[_wgslsmith_index_u32(arg_2.x, 14u)]), arg_2)), u_input.e) % 32u), _wgslsmith_mod_vec3_i32(u_input.c, -select(abs(vec3<i32>(1i, -2147483647i, u_input.c.x)), global1.a.c & vec3<i32>(global1.a.a.b, -28291i, global1.a.a.b), !vec3<bool>(arg_1.a.a.a, false, true))));
    return -2147483647i;
}

fn func_2(arg_0: f32) -> Struct_4 {
    global1 = Struct_4(Struct_3(Struct_2(!global1.a.a.a | false, func_3(false, Struct_4(global1.a), global2[_wgslsmith_index_u32(global1.a.b, 4u)]) << ((global3[_wgslsmith_index_u32(1u, 14u)] & 0u) % 32u)), u_input.b << (~(~4294967295u) % 32u), _wgslsmith_div_vec3_i32(u_input.c, _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, 2147483647i), vec3<i32>(global1.a.c.x, u_input.c.x, 37240i), u_input.c), _wgslsmith_div_vec3_i32(u_input.c, u_input.c)))));
    return Struct_4(Struct_3(global1.a.a, ~_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, 0u), 4u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, global1.a.b), 14u)], 4u)]), _wgslsmith_div_vec3_i32(u_input.c, vec3<i32>(global1.a.c.x, -18422i, 54850i))));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(~(~(~(~_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(0u, 4294967295u, global3[_wgslsmith_index_u32(14076u, 14u)], 0u))))), 10u)];
    global0 = array<f32, 10>();
    global3 = array<u32, 14>();
    global1 = func_2(156f);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-118f)))), global0[_wgslsmith_index_u32(u_input.b, 10u)], true)) - _wgslsmith_f_op_f32(1000f * global0[_wgslsmith_index_u32(func_2(-597f).a.b, 10u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(min(func_2(global0[_wgslsmith_index_u32(~1u, 10u)]).a.b, u_input.b), 10u)] * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1.a.b, 10u)] - global0[_wgslsmith_index_u32(30285u, 10u)]))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(609f * 1379f), _wgslsmith_f_op_f32(-1527f - global0[_wgslsmith_index_u32(global1.a.b, 10u)])))), global0[_wgslsmith_index_u32(~(~reverseBits(u_input.d.x) ^ 38867u), 10u)], 1348f);
    return Struct_2(global1.a.a.a, _wgslsmith_div_i32(global1.a.c.x, -_wgslsmith_sub_i32(u_input.c.x, global1.a.a.b) >> (~(~56861u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 10>();
    var var_0 = Struct_3(func_1(false, !(!(!vec3<bool>(global1.a.a.a, true, true)))), 1u & (_wgslsmith_div_u32(0u, 4294967295u >> (u_input.a % 32u)) << (firstTrailingBit(global3[_wgslsmith_index_u32(847u, 14u)] << (global3[_wgslsmith_index_u32(8385u, 14u)] % 32u)) % 32u)), -((u_input.c & u_input.c) >> (~vec3<u32>(33475u, 0u, global3[_wgslsmith_index_u32(16628u, 14u)]) % vec3<u32>(32u))));
    let var_1 = func_2(-871f);
    let var_2 = global1.a;
    let var_3 = !(!var_1.a.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(~var_1.a.a.b, 13093i));
}

