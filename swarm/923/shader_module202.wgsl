struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 14>;

var<private> global2: array<bool, 12>;

var<private> global3: array<bool, 6>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1) -> i32 {
    global3 = array<bool, 6>();
    let var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, abs(arg_2.b.x), -37588i, ~23524i), -max(vec4<i32>(u_input.a.x, -1i, -16035i, -42476i), vec4<i32>(arg_1, 48249i, global0.b.x, 8063i)), vec4<i32>(arg_2.b.x, firstTrailingBit(arg_2.b.x), global0.b.x, -1i)), -abs(vec4<i32>(arg_2.b.x, 1i, -1i, -48441i)) & ~(-vec4<i32>(-27258i, arg_1, -2147483647i, -32206i))) & max(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_2.b.x, -46122i, 48457i), -vec3<i32>(arg_2.b.x, arg_2.b.x, -1i)), arg_1), global0.b.x);
    return reverseBits(abs(u_input.c));
}

fn func_4(arg_0: Struct_1) -> vec4<u32> {
    global2 = array<bool, 12>();
    var var_0 = Struct_1(abs(vec4<u32>(arg_0.a.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.e.xw, vec2<u32>(u_input.b, 1u)), countOneBits(u_input.e.x)), select(4294967295u, ~arg_0.a.x, global1[_wgslsmith_index_u32(global0.a.x, 14u)] < 839f), ~u_input.b)), countOneBits(select(~u_input.a, ~arg_0.b, global2[_wgslsmith_index_u32(~arg_0.a.x, 12u)])));
    let var_1 = arg_0;
    global0 = Struct_1(var_1.a, max(-var_0.b, ~global0.b));
    var var_2 = global0.a.zz;
    return _wgslsmith_sub_vec4_u32(select(var_0.a, vec4<u32>(~global0.a.x, 1u, reverseBits(arg_0.a.x), _wgslsmith_add_u32(41247u, global0.a.x)) ^ vec4<u32>(~36062u, ~var_1.a.x, 12297u, ~1u), false), var_0.a);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<i32>) -> vec4<u32> {
    var var_0 = Struct_1(func_4(Struct_1(global0.a, vec2<i32>(-2147483647i, func_3(vec2<f32>(global1[_wgslsmith_index_u32(16516u, 14u)], global1[_wgslsmith_index_u32(global0.a.x, 14u)]), 2147483647i, Struct_1(vec4<u32>(global0.a.x, u_input.e.x, 0u, global0.a.x), global0.b))))), ~abs(vec2<i32>(22367i >> (global0.a.x % 32u), -u_input.d)));
    global3 = array<bool, 6>();
    let var_1 = all(arg_0);
    let var_2 = -(~_wgslsmith_add_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, global0.b.x, -1i), vec4<i32>(-2147483647i, 8113i, -1i, u_input.a.x), vec4<i32>(arg_1.x, arg_1.x, 2147483647i, var_0.b.x)), vec4<i32>(-2147483647i, -9757i, arg_1.x, -u_input.c)));
    global2 = array<bool, 12>();
    return var_0.a & ~(~max(vec4<u32>(var_0.a.x, var_0.a.x, 1u, 4294967295u), global0.a));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: f32) -> u32 {
    let var_0 = Struct_1(~abs(func_2(vec2<bool>(true, true), _wgslsmith_add_vec2_i32(global0.b, vec2<i32>(2147483647i, u_input.c)))), u_input.a);
    var var_1 = _wgslsmith_mod_u32(u_input.b, ~global0.a.x);
    global3 = array<bool, 6>();
    let var_2 = Struct_1(~select(vec4<u32>(_wgslsmith_add_u32(0u, 0u), _wgslsmith_div_u32(var_0.a.x, global0.a.x), arg_0.a.x, ~6323u), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.a.x, 51310u, arg_0.a.x, var_0.a.x), vec4<u32>(82960u, 4294967295u, 39259u, global0.a.x)), !all(vec3<bool>(global2[_wgslsmith_index_u32(52662u, 12u)], global2[_wgslsmith_index_u32(24007u, 12u)], true))), var_0.b);
    global2 = array<bool, 12>();
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(select(func_1(Struct_1(min(vec4<u32>(81696u, 55251u, u_input.b, u_input.b), ~global0.a), -(~global0.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(545f, global1[_wgslsmith_index_u32(4294967295u, 14u)])))), global1[_wgslsmith_index_u32(u_input.b, 14u)]), _wgslsmith_add_u32(u_input.e.x, ~abs(32159u) | u_input.e.x), any(!(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 12u)], global3[_wgslsmith_index_u32(0u, 6u)], false)))), 14u)];
    let var_1 = Struct_1(~global0.a, vec2<i32>(19207i, global0.b.x));
    var var_2 = var_1;
    global3 = array<bool, 6>();
    var var_3 = -u_input.d;
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~u_input.d, var_4.b.x, -2147483647i), -871f, _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.b, 14u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-861f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, 840f, false))))))));
}

