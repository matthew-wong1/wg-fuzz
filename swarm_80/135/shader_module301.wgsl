struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8>;

var<private> global1: Struct_2;

var<private> global2: array<vec2<f32>, 25>;

var<private> global3: vec2<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(global3.x * global3.x);
    var var_1 = Struct_2(~((u_input.b.x << (select(9501u, 16303u, false) % 32u)) ^ global1.a));
    let var_2 = Struct_2(_wgslsmith_div_u32(_wgslsmith_add_u32(~(global1.a >> (var_1.a % 32u)), _wgslsmith_sub_u32(abs(0u), global1.a)), u_input.b.x));
    let var_3 = select(vec2<bool>(!(!(global3.x != 1290f)), true), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), 262f == _wgslsmith_f_op_f32(global3.x - global3.x)), any(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)))));
    let var_4 = -vec4<i32>(min(0i, _wgslsmith_mult_i32(-1i, u_input.a.x) << (var_1.a % 32u)), u_input.a.x, global0[_wgslsmith_index_u32(u_input.d.x, 8u)], global0[_wgslsmith_index_u32(0u, 8u)]);
    return Struct_1(vec4<u32>(~(var_1.a << ((0u << (u_input.d.x % 32u)) % 32u)), 16926u & u_input.d.x, 33191u, var_1.a), vec2<u32>(20326u, ~_wgslsmith_div_u32(var_1.a | var_2.a, _wgslsmith_sub_u32(1u, global1.a))), ~vec3<u32>(9119u, 17028u, _wgslsmith_sub_u32(u_input.b.x, var_1.a)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec3<bool>(true, true, any(select(vec2<bool>(all(vec3<bool>(false, true, false)), true), vec2<bool>(true, true), 1u <= ~arg_2.c.x)));
    let var_1 = ~(-(vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(-34847i, global0[_wgslsmith_index_u32(3612u, 8u)], arg_1, global0[_wgslsmith_index_u32(1u, 8u)]), vec4<i32>(u_input.c.x, 71260i, u_input.c.x, arg_1))));
    global0 = array<i32, 8>();
    global0 = array<i32, 8>();
    global2 = array<vec2<f32>, 25>();
    return Struct_1(~(vec4<u32>(min(arg_2.c.x, arg_0.c.x), arg_2.c.x, ~4294967295u, ~73167u) | (~arg_0.a >> (arg_0.a % vec4<u32>(32u)))), reverseBits(max(u_input.b.xz, vec2<u32>(13623u, 37173u))), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(37423u, 4294967295u, global1.a)), arg_2.c), min(max(global1.a, 1u), ~12297u), u_input.d.x), _wgslsmith_mod_vec3_u32(u_input.d, vec3<u32>(~4294967295u, ~38906u, 0u))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3) -> u32 {
    let var_0 = func_3(func_2(), ~(-13073i), func_2());
    global0 = array<i32, 8>();
    var var_1 = any(vec3<bool>(true, true, true));
    let var_2 = arg_2;
    var var_3 = -589f;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mult_u32(u_input.d.x >> (4294967295u % 32u), ~global1.a << (countOneBits(1u) % 32u)) | func_1(Struct_2(~(~global1.a)), Struct_3(reverseBits(vec4<i32>(-46048i, u_input.c.x, -1i, -81061i) << (vec4<u32>(u_input.b.x, global1.a, u_input.d.x, global1.a) % vec4<u32>(32u)))), Struct_3(-select(vec4<i32>(u_input.c.x, u_input.a.x, global0[_wgslsmith_index_u32(53417u, 8u)], 70879i), vec4<i32>(36419i, global0[_wgslsmith_index_u32(93445u, 8u)], u_input.a.x, -2147483647i), vec4<bool>(false, false, false, false))));
    global2 = array<vec2<f32>, 25>();
    global2 = array<vec2<f32>, 25>();
    var var_1 = -u_input.c;
    let var_2 = Struct_1(vec4<u32>(31806u, 1u ^ _wgslsmith_div_u32(35167u, _wgslsmith_sub_u32(global1.a, var_0)), select(59624u, select(select(4294967295u, 6953u, true), ~39488u, true), !(global3.x >= -300f)), 6442u), firstTrailingBit(_wgslsmith_div_vec2_u32(~u_input.b.xz, u_input.b.yz)), ~u_input.d);
    let var_3 = u_input.b.x;
    var var_4 = ~(~var_2.c.xz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - global3.x) - 1036f)), -347f, ~_wgslsmith_mod_vec3_u32(var_2.c, var_2.c), abs(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_2.b.x, 2515u, global1.a), var_2.a), var_2.a.x), 32267u, 1u, var_4.x)));
}

