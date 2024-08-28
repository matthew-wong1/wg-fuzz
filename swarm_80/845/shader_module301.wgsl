struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<f32, 21>;

var<private> global2: array<vec2<i32>, 13>;

var<private> global3: f32 = -1224f;

var<private> global4: vec3<i32> = vec3<i32>(-3810i, 18901i, 2147483647i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: i32) -> Struct_1 {
    var var_0 = select(arg_0, arg_0, true);
    global0 = -abs(2147483647i);
    return Struct_1(-46801i, u_input.c.x, 45u);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = -(~vec4<i32>(global4.x, _wgslsmith_add_i32(global4.x, arg_2.a), firstLeadingBit(u_input.d), func_1(76994u, global1[_wgslsmith_index_u32(arg_0.b, 21u)], 2147483647i).a) ^ vec4<i32>(reverseBits(firstTrailingBit(-2147483647i)), firstLeadingBit(-18062i), -arg_0.a, 11288i));
    global0 = _wgslsmith_add_i32(-17994i, -33202i);
    var var_1 = reverseBits(~(~vec3<u32>(4294967295u, 58319u, 40177u)) << (((firstLeadingBit(vec3<u32>(72333u, 1127u, 5974u)) << (vec3<u32>(arg_2.c, arg_0.c, arg_0.c) % vec3<u32>(32u))) & ~(vec3<u32>(66523u, 33276u, 29616u) | vec3<u32>(u_input.c.x, u_input.a.x, 8429u))) % vec3<u32>(32u)));
    let var_2 = ~global4.x;
    var var_3 = _wgslsmith_mult_vec4_i32(u_input.b, ~vec4<i32>(-(i32(-1i) * -1i), 1i, -_wgslsmith_div_i32(2147483647i, 16922i), _wgslsmith_div_i32(global4.x, reverseBits(u_input.b.x))));
    return Struct_1(-arg_2.a, arg_0.c, u_input.c.x | _wgslsmith_sub_u32(reverseBits(arg_0.c) >> ((u_input.c.x & 1u) % 32u), _wgslsmith_sub_u32(u_input.c.x, 1u)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global4 = _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b.yxw, -select(vec3<i32>(2147483647i, arg_0.a, 1i) ^ u_input.b.yzx, _wgslsmith_mult_vec3_i32(u_input.b.zyx, vec3<i32>(2147483647i, arg_0.a, -46533i)), false)), u_input.b.xzx);
    let var_0 = arg_0;
    var var_1 = arg_0;
    var var_2 = Struct_1(var_1.a, u_input.c.x, max(func_2(func_2(arg_0, false, var_0), !all(vec2<bool>(false, true)), var_0).c, abs(u_input.a.x >> (max(1u, var_0.c) % 32u))));
    var var_3 = !vec2<bool>(!(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(var_1.b, 21u)])) <= _wgslsmith_f_op_f32(max(-506f, global1[_wgslsmith_index_u32(11277u, 21u)]))), true);
    return _wgslsmith_sub_i32(~(~(-(~(-2147483647i)))), max(min(2147483647i, -20258i) << (0u % 32u), -_wgslsmith_div_i32(var_2.a, 0i)) & (i32(-1i) * -13274i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -firstTrailingBit(func_3(func_2(func_1(1u, global1[_wgslsmith_index_u32(u_input.c.x, 21u)], 0i), true, func_1(u_input.a.x, global1[_wgslsmith_index_u32(u_input.c.x, 21u)], global4.x))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 21u)] - _wgslsmith_div_f32(1316f, -652f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(u_input.a.x, 21u)])) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1142f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~max(max(u_input.c.x & 4294967295u, 1u), _wgslsmith_mod_u32(45223u, ~14146u)), firstTrailingBit(~(~u_input.c)), u_input.a, ~u_input.b.zy, _wgslsmith_dot_vec4_u32((abs(vec4<u32>(u_input.c.x, 0u, 1u, 86214u)) << (vec4<u32>(8273u, 61180u, u_input.c.x, 0u) % vec4<u32>(32u))) << (vec4<u32>(~22330u, func_1(29933u, var_1, global4.x).c, _wgslsmith_mult_u32(u_input.a.x, 0u), u_input.a.x) % vec4<u32>(32u)), vec4<u32>(~0u, func_1(_wgslsmith_mod_u32(19104u, 22890u), global1[_wgslsmith_index_u32(34376u, 21u)], 28063i | global4.x).c, ~_wgslsmith_add_u32(0u, 17386u), 0u)));
}

