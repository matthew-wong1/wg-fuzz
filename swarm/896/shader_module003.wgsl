struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2> = array<bool, 2>(false, false);

var<private> global1: bool = false;

var<private> global2: array<f32, 12> = array<f32, 12>(1257f, -2519f, 1000f, 911f, -313f, 1000f, 633f, -240f, -1781f, 231f, -520f, 2554f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<u32>) -> i32 {
    global1 = u_input.a != _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit(-vec4<i32>(-2147483647i, -1i, arg_1.a, arg_1.c)), _wgslsmith_add_vec4_i32(abs(vec4<i32>(-21485i, arg_1.d, 1i, -2569i)), _wgslsmith_sub_vec4_i32(vec4<i32>(27794i, 82522i, -1i, 25605i), vec4<i32>(2280i, 2147483647i, arg_1.b, -2147483647i)))), min(13390i, -2697i));
    let var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(-23108i << (arg_2.x % 32u), arg_1.d), -_wgslsmith_add_vec2_i32(~vec2<i32>(0i, arg_1.d), vec2<i32>(-54731i, -44056i & u_input.a)));
    let var_1 = all(arg_0);
    let var_2 = Struct_4(_wgslsmith_div_i32(arg_1.c << (countOneBits(u_input.c.x) % 32u), 1i) & u_input.a);
    global0 = array<bool, 2>();
    return ~u_input.a;
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_4 {
    var var_0 = u_input.d;
    let var_1 = Struct_1(u_input.a, arg_0, u_input.a, -func_3(select(vec3<bool>(true, arg_1, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 2u)], arg_1, false), vec3<bool>(false, arg_1, global0[_wgslsmith_index_u32(u_input.e, 2u)])), Struct_1(9664i, u_input.a, 25905i, -2147483647i, u_input.c), ~u_input.c) >> (abs(0u) % 32u), ~u_input.c);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(firstLeadingBit(41267u), _wgslsmith_div_u32(var_1.e.x, u_input.d)), 12u)], global2[_wgslsmith_index_u32(~max(~33919u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.e.x, 4294967295u, 85923u, 81690u), vec4<u32>(var_1.e.x, 20112u, u_input.d, 4294967295u))), 12u)])), -870f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(0u, u_input.b) >> (4294967295u % 32u), 1u), 12u)] - -758f));
    return Struct_4(~(-42946i));
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = 9196u;
    let var_1 = func_2(~(u_input.a << (~u_input.b % 32u)), false);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(56464u, 12u)] * -224f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -878f))));
    let var_3 = !vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d, ~u_input.c.x), 2u)], global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_add_u32(u_input.d, u_input.d)), 2u)] && false);
    let var_4 = ~(vec2<i32>(2147483647i, 0i) ^ max(vec2<i32>(-1i, func_3(vec3<bool>(true, var_3.x, true), Struct_1(u_input.a, -26524i, u_input.a, var_1.a, u_input.c), vec3<u32>(u_input.c.x, 0u, 6261u))), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, -32615i), vec2<i32>(-1i, var_1.a))));
    return !var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 12>();
    global1 = !global0[_wgslsmith_index_u32(~u_input.e, 2u)];
    global2 = array<f32, 12>();
    var var_0 = !(!select(select(vec4<bool>(global0[_wgslsmith_index_u32(2079u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(u_input.d, 2u)], global0[_wgslsmith_index_u32(u_input.b, 2u)]), !vec4<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(4972u, 2u)], global0[_wgslsmith_index_u32(19922u, 2u)])), vec4<bool>(func_1(global2[_wgslsmith_index_u32(u_input.e, 12u)]), global0[_wgslsmith_index_u32(u_input.d | 81182u, 2u)], global0[_wgslsmith_index_u32(u_input.b, 2u)] && global0[_wgslsmith_index_u32(u_input.c.x, 2u)], false), !(global0[_wgslsmith_index_u32(4553u, 2u)] || true)));
    global2 = array<f32, 12>();
    var_0 = vec4<bool>(var_0.x, var_0.x, any(var_0.zw), true);
    global1 = true;
    global1 = all(var_0.wz) != (func_2(1i, global0[_wgslsmith_index_u32(u_input.d, 2u)]).a > u_input.a);
    global1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(56491u, countOneBits(abs(u_input.d)), 36908u, 23744u));
}

